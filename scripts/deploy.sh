#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../terraform"
terraform init
terraform apply -auto-approve

echo "Deployment successful!"
terraform output alb_dns_name
