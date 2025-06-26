const express = require('express');
const app = express();
const programas = require('../data/programas.json');

app.get('/status', (req, res) => {
  res.json({ status: 'API online' });
});

app.get('/programas_treino_disponiveis', (req, res) => {
  res.json(programas);
});

module.exports = app;
