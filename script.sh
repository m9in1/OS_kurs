#!/bin/bash
echo >  result.txt
sudo ./cs -q | ./processing_cs.sh &
sudo ./lb -q 2 | ./processing_lb.sh &
