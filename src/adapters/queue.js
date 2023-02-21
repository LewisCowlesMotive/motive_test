'use strict';

const { sendMessage } = require('../infrastructure/queue');

const sendToTestQueue = (body, deduplicationId) =>
  sendMessage('testQueue', body, deduplicationId);

module.exports = {
  sendToTestQueue,
};
