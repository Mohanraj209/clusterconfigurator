#!/bin/bash

# Entry point script to run RKE.

# Run RKE
rke up --config /rke/config/cluster.yml

# Copy generated files to the shared volume
cp /root/cluster.rkestate /rke/config/
cp /etc/kubernetes/kube_config_cluster.yml /rke/config/
