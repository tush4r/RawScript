#!/bin/bash

#This Script shall install required drivers on the clusters

cd ~/
git clone https://github.com/tush4r/RawScript.git
cd RawScript/
HDP_PATH=$(ls -d /usr/hdp/* | head -n 1)
SQOOP_PATH=$HDP_PATH/sqoop/lib/
sudo cp ojdbc6.jar $SQOOP_PATH
