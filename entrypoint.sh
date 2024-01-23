#!/bin/bash

# Entry point script to run RKE

# Update PATH to include /usr/local/bin
export PATH=$PATH:/usr/local/bin

# Run RKE
rke up --config /config/cluster.yml

# Copy generated files to the shared volume
cp /root/cluster.rkestate /config/
cp /etc/kubernetes/kube_config_cluster.yml /config/
