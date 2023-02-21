#!/usr/bin/env bash

set -euo pipefail

# enable debug
# set -x

LOCALSTACK_HOST=localhost
AWS_REGION=eu-west-1
NUMBER_OF_MESSAGES=${1:-10}
QUEUE_NAME=${2:-motive-test-queue}

echo "listing (up to) ${NUMBER_OF_MESSAGES} sqs messages"
echo "==================="

list_messages() {
    aws --endpoint-url=http://localhost:4566 --region=${AWS_REGION} --queue-url=http://localhost:4566/000000000000/${QUEUE_NAME} sqs receive-message --max-number-of-messages=${NUMBER_OF_MESSAGES}
}

list_messages