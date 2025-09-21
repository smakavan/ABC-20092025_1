#!/bin/bash

VM1_PUBLIC_IP="$1"
VM2_PRIVATE_IP="$2"
SSH_KEY_PATH="$3"
SSH_USER="azureuser"

echo "Connecting to VM1"
ping -c 4 "$VM1_PUBLIC_IP"
echo ""

echo "Connecting to VM1 via SSH to ping VM2"
ssh -o StrictHostKeyChecking=no -i "$SSH_KEY_PATH" "$SSH_USER@$VM1_PUBLIC_IP" "ping -c 4 $VM2_PRIVATE_IP"
echo ""
