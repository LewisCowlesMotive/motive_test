'use strict';

const endpoint = 'http://localhost:4566';
const accountId = '000000000000';
const queueName = 'motive-test-queue';
const apiVersion = '2012-11-05';
const region = 'eu-west-1';

module.exports = {
  queues: {
    apiVersion,
    region,
    endpoint,
    testQueue: {
      accountId,
      queueName,
    },
  },
}