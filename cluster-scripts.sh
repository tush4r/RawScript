#!/bin/bash

#This Script shall install required drivers on the clusters
# password=`cat parameters.json | jq -r '.parameters.clusterLoginPassword.value'`
# username=`cat parameters.json | jq -r '.parameters.clusterLoginUserName.value'`

cd ~/
git clone https://github.cerner.com/ts066692/OJDBC.git
cd OJDBC/
HDP_PATH=$(ls -d /usr/hdp/* | head -n 1)
SQOOP_PATH=$HDP_PATH/sqoop/lib/
sudo cp ojdbc6.jar $SQOOP_PATH
