#!/usr/bin/env bash

set -euo pipefail

# enable debug
# set -x

echo "deleting sqs message"
echo "==================="
LOCALSTACK_HOST=localhost
AWS_REGION=eu-west-1
RECEIPT_HANDLE=$1
QUEUE_NAME=${2:-motive-test-queue}

delete_messages() {
    aws --endpoint-url=http://localhost:4566 --region=${AWS_REGION} --queue-url=http://localhost:4566/000000000000/${QUEUE_NAME} --receipt-handle=${RECEIPT_HANDLE} sqs delete-message
}

delete_messages