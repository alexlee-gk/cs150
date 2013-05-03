#!/bin/bash

rm -rf xst

echo "xst -ifn "system_xst.scr" -intstyle silent"

echo "Running XST synthesis ..."

xst -ifn "system_xst.scr" -intstyle silent
if [ $? -ne 0 ]; then
  exit 1
fi

echo "XST completed"

rm -rf xst
