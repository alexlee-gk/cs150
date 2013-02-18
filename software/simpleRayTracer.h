#ifndef simpleRayTracer_h
#define simpleRayTracer_h

#include "includes.h"
#include "defines.h"
#include "Objects/World.h"
#include "Objects/Ray.h"
#include "Objects/Camera.h"

#define SUB(dest,v1,v2) \
	dest[0]=v1[0]-v2[0]; \
	dest[1]=v1[1]-v2[1]; \
	dest[2]=v1[2]-v2[2];


#include <map>
class Triangle;
class tri
{
	public:
		static float normal[1024][3];
		static float vertex0[1024][3];
		static float vertex1[1024][3];
		static float vertex2[1024][3];
		static float kd[1024][3];
		static float kr[1024][3];
		static int count;
		static std::map<Triangle*,int> tri2ind;
		static std::map<int,Triangle*> ind2tri;
};
class lig
{
	public:
		static double dir[1024][3];
		static int count;
};


Color pixel_ray_tracing(Camera* camera, int w, int h);

bool intersection(int tri_ind, Vector3d orig, Vector3d dir, double& t);
bool intersection(Vector3d orig, Vector3d dir, int origin_tri_ind, int& hit_tri_ind, double& t);

#endif

