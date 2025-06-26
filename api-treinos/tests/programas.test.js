const request = require('supertest');
const app = require('../src/app');

describe('Testes da API de Treinos', () => {
  test('GET /status deve retornar status online', async () => {
    const res = await request(app).get('/status');
    expect(res.statusCode).toBe(200);
    expect(res.body.status).toBe('API online');
  });

  test('GET /programas_treino_disponiveis deve retornar a lista de programas', async () => {
    const res = await request(app).get('/programas_treino_disponiveis');
    expect(res.statusCode).toBe(200);
    expect(Array.isArray(res.body)).toBe(true);
    expect(res.body.length).toBeGreaterThanOrEqual(10);
  });
});
