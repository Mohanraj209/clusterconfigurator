#!/bin/bash

# Entry point script to run RKE

# Run RKE
rke up --config /rke/config/cluster.yml
ls
pwd
# Copy generated files to the shared volume
cp cluster.rkestate /rke/config/
cp kube_config_cluster.yml /rke/config/
