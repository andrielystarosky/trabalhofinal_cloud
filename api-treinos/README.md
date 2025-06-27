# API - Programas de Treino Online

## Descrição

Esta é uma **API RESTful** desenvolvida em **Node.js com Express**, que lista programas de treino online.

Ela faz parte do trabalho final da disciplina **Cloud Computing**, cujo objetivo é simular um fluxo completo de DevOps: desenvolvimento, testes, integração contínua, provisionamento de infraestrutura e deploy automatizado na nuvem AWS.

---

## Endpoints da API

| Método | Rota                            | Descrição                               |
| ------ | ------------------------------- | --------------------------------------- |
| GET    | `/status`                       | Verificar o status da API               |
| GET    | `/programas_treino_disponiveis` | Retornar a lista de programas de treino |

---

## Estrutura da Pasta `api-treinos`

```
api-treinos/
├── data/
│   └── programas.json              # Base de dados simulada com 10 programas de treino
├── src/
│   └── app.js                      # Configuração de rotas e Express
├── tests/
│   └── api.test.js                 # Testes unitários com Jest + Supertest
├── index.js                        # Inicialização da API
├── package.json                    # Dependências e scripts npm
└── README.md                       # Este arquivo
```

---

## Tecnologias utilizadas

* **Node.js v20.x**
* **Express**
* **Jest**
* **Supertest**

---

## Como executar localmente

### 1. Instale as dependências:

```bash
npm install
```

---

### 2. Inicie a API:

```bash
npm start
```

A API ficará disponível por padrão em:
[http://localhost:3000](http://localhost:3000)

---

### 3. Testar as rotas:

| Rota                            | Exemplo                                                                                                    |
| ------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| `/status`                       | [http://localhost:3000/status](http://localhost:3000/status)                                               |
| `/programas_treino_disponiveis` | [http://localhost:3000/programas\_treino\_disponiveis](http://localhost:3000/programas_treino_disponiveis) |

---

## Como executar os testes unitários

```bash
npm test
```

Os testes validam as principais rotas da API.

---

## Requisitos atendidos nesta API:

* ✅ Duas rotas implementadas (`/status` e `/programas_treino_disponiveis`)
* ✅ Base de dados com no mínimo 10 registros realistas
* ✅ Mínimo de 2 testes unitários com Jest + Supertest
* ✅ Pronto para execução local e integração em CI/CD

---

## Autor

**Andriely Starosky e Wilson Hugen Junior**

Repositório:
👉 [https://github.com/andrielystarosky/trabalhofinal\_cloud](https://github.com/andrielystarosky/trabalhofinal_cloud)
