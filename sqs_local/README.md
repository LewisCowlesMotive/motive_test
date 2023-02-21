# SQS localstack helpers

## Setup

* docker
* docker-compose
* git
* NodeJS 16+
* homebrew package manager
* aws cli

## Running

```
docker-compose up -d
node ./test-queue.js && ./list-messages.sh && ./purge-queue.sh
```

This shows the use of purge-queue, test-queue and list-messages helpers.

It should be enough to help a relatively new learner improve upon and implement the SQS side of the challenge.

## More information

This uses localstack, which is a project which should help use AWS without charges or an active internet connection (past initial docker image pull).

## Scripts

`local_helpers` directory has a list of scripts. Here is some information about them.

### delete-message.sh

This script deletes a message by it's message-id. It uses the `aws sqs delete-message`

### list-messages.sh

This script lists up to 10 messages (try to go over that limit you'll see AWS API limitation problems)

### purge-queue.sh

This script purges a queue of messages. It can be used in-between test or script runs in order to ensure a blank-slate state.

### test-queue.js

This script is JavaScript and just publishes a message to the queue. It uses a skeleton of code which is made available to the test application source-code.

## Goals

* To help potential onboards and new onboards get used to the `sense` teams technologies.
* To provide a lightweight, simple set of interfaces, burying detail for junior and mid-level colleagues, and providing talking points for more advanced team members.
* A place to experiment. We gotta have fun too. (although iteration should be monitored)
