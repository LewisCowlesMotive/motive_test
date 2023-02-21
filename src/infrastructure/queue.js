'use strict';

const { sqsClient: sqs } = require('./queues/sqs');
const { queues: queueConfig } = require('../config');

const { endpoint } = queueConfig;

const sendMessage = (queueIdentifier, body, deduplicationId=undefined) => {
  const { accountId, queueName } = queueConfig[queueIdentifier];

  return sqs.sendMessage({
    ...(queueName.endsWith('.fifo') && { MessageDeduplicationId: deduplicationId }),
    MessageBody: JSON.stringify(body),
    QueueUrl: `${endpoint}/${accountId}/${queueName}`,
  }).promise();
};

module.exports = {
  sendMessage,
};
