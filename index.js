const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.json('OK');
});

app.listen('5000', () => {
  console.log('Express server started');
});
