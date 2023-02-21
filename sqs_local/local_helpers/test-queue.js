'use strict';

const { sendToTestQueue } = require('../../src/adapters/queue');
const { randomUUID } = require('crypto');

sendToTestQueue({ date: new Date().toISOString() }, randomUUID().toString());
