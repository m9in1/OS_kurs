#!/bin/bash
sudo ./cs -q > color_data &
sudo ./processing_cs.sh < color_data &
sudo ./lb 2 -q | sudo ./processing_lb.sh &
