#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR/terraform"

ALB_DNS=$(terraform output -raw alb_dns_name)

echo "Testing / endpoint:"
curl -s "http://${ALB_DNS}/" || { echo "Failed /"; exit 1; }

echo
echo "Testing /health endpoint:"
curl -s "http://${ALB_DNS}/health" || { echo "Failed /health"; exit 1; }

echo
echo "Tests completed."
