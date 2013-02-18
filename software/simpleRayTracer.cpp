#include "simpleRayTracer.h"

float tri::normal[1024][3];
float tri::vertex0[1024][3];
float tri::vertex1[1024][3];
float tri::vertex2[1024][3];
float tri::kd[1024][3];
float tri::kr[1024][3];
int tri::count = 0;
map<Triangle*,int> tri::tri2ind;
map<int,Triangle*> tri::ind2tri;
double lig::dir[1024][3];
int lig::count = 0;

Color pixel_ray_tracing(Camera* camera, int w, int h) {
	Vector3d pixel_pos;
	pixel_pos(0) = camera->left + (double(w)/double(camera->width))*(camera->right - camera->left);
	pixel_pos(1) = camera->bottom + (double(h)/double(camera->height))*(camera->top - camera->bottom);
	pixel_pos(2) = camera->near;
	pixel_pos = camera->position + camera->rotation * pixel_pos;

	Color colors[3];
	Color r_colors[3];
	
	Vector3d ray_orig = pixel_pos;
	Vector3d ray_dir = (pixel_pos - camera->position).normalized();
	int my_tri_ind = -1;
  int tri_ind = -1;
  for (int rec=0; rec<3; rec++) {
  	double t;
		bool hit = intersection(ray_orig, ray_dir, my_tri_ind, tri_ind, t);
		if (hit) {
		  const Vector3d intersection_point = ray_orig+ t * ray_dir;
		
		  Vector3d normal(tri::normal[tri_ind][0], tri::normal[tri_ind][1], tri::normal[tri_ind][2]);
			if (normal.dot(ray_dir) > 0) normal*=-1;
			colors[rec] = Color(0.1,0.1,0.1);
			for (int i=0; i<lig::count; i++) {
				Vector3d light_ray_orig = intersection_point;
				Vector3d light_ray_dir(lig::dir[i][0],lig::dir[i][1],lig::dir[i][2]);
				int tri_ind_unused = -1;
				double t_unused;
				if (!intersection(light_ray_orig, light_ray_dir, tri_ind, tri_ind_unused, t_unused)) {
					colors[rec] += Color(tri::kd[tri_ind][0],tri::kd[tri_ind][1],tri::kd[tri_ind][2]) * max(light_ray_dir.dot(normal), 0.0);
					Vector3d reflection = (- light_ray_dir + 2.0 * (light_ray_dir.dot(normal)) * normal).normalized();
					colors[rec] += Color(1,1,1) * pow(max(reflection.dot(-ray_dir), 0.0), 50);
				}
			}
			// reflected ray
			ray_dir = (ray_dir + 2.0 * (-ray_dir.dot(normal) * normal)).normalized();
			ray_orig = intersection_point;
			my_tri_ind = tri_ind;
			r_colors[rec] = Color(tri::kr[tri_ind][0],tri::kr[tri_ind][1],tri::kr[tri_ind][2]);
		
			for (int i = 0; i < 3; i++)
				colors[rec](i) = min(colors[rec](i), 1.0);
		} else {
			colors[rec].setZero();
		}
	}
	
	Color color = r_colors[0].cwise()*(r_colors[1].cwise()*colors[2]+colors[1])+colors[0];
	for (int i = 0; i < 3; i++)
		color(i) = min(color(i), 1.0);
	return color;
}

bool intersection(int tri_ind, Vector3d orig, Vector3d dir, double& t)
{
	t = DBL_MAX;
	
	Vector3d edge1, edge2;
	SUB(edge1, tri::vertex1[tri_ind], tri::vertex0[tri_ind]);
	SUB(edge2, tri::vertex2[tri_ind], tri::vertex0[tri_ind]);
  
  Vector3d pvec = dir.cross(edge2);
  
  double det = edge1.dot(pvec);

	if (det > -eps && det < eps) return false;
	double inv_det = 1.0/det;
	
	Vector3d tvec;
	SUB(tvec, orig, tri::vertex0[tri_ind]);
	
	double u = tvec.dot(pvec) * inv_det;
	if (u<0.0 || u>1.0) return false;
	
	Vector3d qvec = tvec.cross(edge1);
	
	double v = dir.dot(qvec) * inv_det;
	if (v<0.0 || u+v>1.0) return false;
	
	t = edge2.dot(qvec) * inv_det;
  if (t < 0.0) return false;
  return t;
}

bool intersection(Vector3d orig, Vector3d dir, int origin_tri_ind, int& hit_tri_ind, double& t)
{
  t = DBL_MAX;
  double candidate_t;
  for (int ind = 0; ind < tri::count; ind++) {
    if(origin_tri_ind != ind) {
      bool hit = intersection(ind, orig, dir, candidate_t);
      if (hit && (candidate_t < t)) {
        t = candidate_t;
        hit_tri_ind = ind;
      }
    }
  }
  return (t!=DBL_MAX);
}
