#!/bin/bash
make
sudo ./cs -q color_data
sudo ./lb -q 2
