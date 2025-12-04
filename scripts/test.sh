#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../terraform"
ALB_DNS=$(terraform output -raw alb_dns_name)

echo "Testing /"
curl http://$ALB_DNS/

echo "Testing /health"
curl http://$ALB_DNS/health
