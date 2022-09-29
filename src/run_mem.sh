#!/bin/bash
for i in {1..50}
do
  /usr/bin/time -v node calculate.js |& grep Maximum >> ../results/js.mem
  /usr/bin/time -v ./calculate |& grep Maximum >> ../results/cpp.mem
  /usr/bin/time -v python calculate.py |& grep Maximum >> ../results/python.mem
done
