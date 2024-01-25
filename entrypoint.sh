#!/bin/bash

# Entry point script to run RKE

# Run RKE
rke up --config /rke/config/cluster.yml
cd /rke
ls -l
chmod -R 777 /rke/config/cluster.rkestate /rke/config/kube_config_cluster.yml
rm -rf ssh_key runner_key.pub runner_key
