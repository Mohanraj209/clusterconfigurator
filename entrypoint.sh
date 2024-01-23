#!/bin/bash

# Entry point script to run RKE

echo "Current PATH: $PATH"
echo "Contents of /usr/local/bin:"
ls -l /usr/local/bin
# Print contents of /config directory
ls -la /

rke up --config cluster.yml

# Copy generated files to the shared volume
cp /root/cluster.rkestate /config/
cp /etc/kubernetes/kube_config_cluster.yml /config/
