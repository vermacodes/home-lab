#!/bin/bash

# Run this script to create necessary Kubernetes secrets for go2rtc
# This must be run before applying the go2rtc manifests.

# Check if already logged in
if ! bw login --check > /dev/null 2>&1; then
  echo "Not logged in to BitWarden. Please run: bw login"
  exit 1
fi

# Unlock and get session token
echo "Unlocking BitWarden vault..."
BW_SESSION=$(bw unlock --raw)

if [ -z "$BW_SESSION" ]; then
  echo "Failed to unlock BitWarden vault"
  exit 1
fi

export BW_SESSION

# Retrieve go2rtc credentials from BitWarden
USERNAME=$(bw get username go2rtc-credentials)
PASSWORD=$(bw get password go2rtc-credentials)
KASA_USERNAME=$(bw get username kasasmart.com)
KASA_USERNAME_URLENCODED=$(echo -n "$KASA_USERNAME" | jq -s -R -r @uri)
KASA_PASSWORD=$(bw get password kasasmart.com)
KASA_PASSWORD_BASE64=$(echo -n "$KASA_PASSWORD" | base64)

# Check if the credential retrieval was successful
if [ -z "$PASSWORD" ] || [ -z "$KASA_PASSWORD" ]; then
  echo "Failed to retrieve credentials from BitWarden."
  echo "Make sure you have:"
  echo "1. A 'go2rtc-credentials' item in BitWarden"
  echo "2. A 'kasasmart.com' item in BitWarden"
  exit 1
fi

# Delete existing secret if it exists
kubectl delete secret go2rtc-credentials -n home-assistant --ignore-not-found

# Create the Kubernetes secret with the retrieved credentials
kubectl create secret generic go2rtc-credentials \
  --from-literal=api-username="${USERNAME}" \
  --from-literal=api-password="${PASSWORD}" \
  --from-literal=rtsp-username="${USERNAME}" \
  --from-literal=rtsp-password="${PASSWORD}" \
  --from-literal=kasa-username-urlencoded="${KASA_USERNAME_URLENCODED}" \
  --from-literal=kasa-password-base64="${KASA_PASSWORD_BASE64}" \
  -n home-assistant

echo "Secret 'go2rtc-credentials' created successfully in namespace 'home-assistant'"

# Unset the session token for security
unset BW_SESSION