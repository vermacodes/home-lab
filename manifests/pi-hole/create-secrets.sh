#!/bin/bash

# Run this script to create necessary Kubernetes secrets for Pi-hole
# This must be run before applying the Pi-hole manifests.

# Authenticate to BitWarden CLI
# bw login

# Export BitWarden session key as mentioned in the output after login

# Retrieve Pi-hole password from BitWarden
PI_HOLE_PASSWORD=$(bw get password pi-hole-credentials)

# Check if the password retrieval was successful
if [ $? -ne 0 ]; then
  echo "Failed to retrieve Pi-hole password from BitWarden."
  exit 1
fi

# Delete existing secret if it exists
kubectl delete secret pi-hole-credentials -n pi-hole --ignore-not-found

# Create the Kubernetes secret with the retrieved password
kubectl create secret generic pi-hole-credentials \
  --from-literal=username=admin \
  --from-literal=password=${PI_HOLE_PASSWORD} \
  --from-literal=exporter-password="${PI_HOLE_PASSWORD},${PI_HOLE_PASSWORD},${PI_HOLE_PASSWORD}" \
  --from-literal=nebula-primary="http://pi-hole-rw-0.pi-hole.pi-hole.svc.cluster.local|${PI_HOLE_PASSWORD}" \
  --from-literal=nebula-replicas="http://pi-hole-ro-0.pi-hole.pi-hole.svc.cluster.local|${PI_HOLE_PASSWORD},http://pi-hole-ro-1.pi-hole.pi-hole.svc.cluster.local|${PI_HOLE_PASSWORD}" \
  -n pi-hole