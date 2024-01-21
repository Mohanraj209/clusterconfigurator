#!/bin/bash

# Entry point script to run RKE

# Run RKE
rke up --config /config/cluster.yml

# Copy generated files to the shared volume
cp /root/cluster.rkestate /config/
cp /etc/kubernetes/kube_config_cluster.yml /config/
