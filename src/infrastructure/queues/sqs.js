'use strict';

const AWS = require('aws-sdk');
const { queues: queueConfig } = require('../../config');

const { endpoint, apiVersion, region } = queueConfig;

const sqsClient = new AWS.SQS({
  apiVersion,
  endpoint,
  region,
});

module.exports = {
  sqsClient,
};
