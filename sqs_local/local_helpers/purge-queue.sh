#!/usr/bin/env bash

set -euo pipefail

# enable debug
# set -x

echo "purging sqs queue"
echo "==================="
LOCALSTACK_HOST=localhost
AWS_REGION=eu-west-1
QUEUE_NAME=${1:-motive-test-queue}

delete_messages() {
    aws --endpoint-url=http://localhost:4566 --region=${AWS_REGION} --queue-url=http://localhost:4566/000000000000/${QUEUE_NAME} sqs purge-queue
}

delete_messages