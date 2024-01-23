#!/bin/bash

# Entry point script to run RKE

echo "Current PATH: $PATH"
echo "Contents of /usr/local/bin:"
ls -l /usr/local/bin

# Run RKE (assuming cluster.yml is in the same directory as Dockerfile)
/usr/local/bin/rke up --config /config/cluster.yml

# Run RKE
rke up --config /config/cluster.yml

# Copy generated files to the shared volume
cp /root/cluster.rkestate /config/
cp /etc/kubernetes/kube_config_cluster.yml /config/
