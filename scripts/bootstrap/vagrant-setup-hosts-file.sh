#!/bin/bash

set -euo pipefail

cat <<EOF | sudo tee -a /etc/hosts
# KTHW Vagrant machines
10.240.0.10 master
10.240.0.20 worker
EOF
