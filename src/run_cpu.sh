#!/bin/bash
for i in {1..50}
do
  /usr/bin/time -v node calculate.js |& grep User >> ../results/js.times
  /usr/bin/time -v ./calculate |& grep User >> ../results/cpp.times
  /usr/bin/time -v python calculate.py |& grep User >> ../results/python.times
done
