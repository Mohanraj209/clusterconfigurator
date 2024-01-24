#!/bin/bash

# Entry point script to run RKE

# Run RKE
rke up --config /rke/config/cluster.yml
cd /rke
ll
