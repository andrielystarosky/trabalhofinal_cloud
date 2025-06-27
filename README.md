# Trabalho final - API de Programas de Treino Online

## Descrição do Projeto

Este projeto faz parte do Trabalho Final da disciplina de Cloud Computing. O objetivo foi criar uma **API RESTful para listar programas de treino online**, utilizando a linguagem **Node.js com Express**, aplicando práticas DevOps e infraestrutura em nuvem.

Além do desenvolvimento da API, o projeto passou por um ciclo completo de DevOps:

* **Integração Contínua (CI) com GitHub Actions**
* **Provisionamento de infraestrutura com Terraform na AWS**
* **Automação de deploy com Ansible**

---

## Funcionalidades da API

| Método | Rota                            | Descrição                                          |
| ------ | ------------------------------- | -------------------------------------------------- |
| GET    | `/status`                       | Verificar o status de execução da API              |
| GET    | `/programas_treino_disponiveis` | Retorna a lista de programas de treino disponíveis |

---

## Estrutura de Pastas

```
├── data/
│   └── programas.json          # Base de dados simulada com 10 registros de programas de treino
├── src/
│   └── app.js                  # Configuração do Express e rotas
├── tests/
│   └── api.test.js             # Testes unitários com Jest e Supertest
├── index.js                    # Inicialização da API
├── package.json                # Dependências e scripts npm
└── README.md                   # Este arquivo
```

---

## Tecnologias Utilizadas

* **Node.js v20.x**
* **Express**
* **Jest** + **Supertest** (para os testes)
* **GitHub Actions** (para CI)
* **Terraform** (para criação de infraestrutura AWS)
* **Ansible** (para automação do deploy)
* **AWS EC2 + VPC + Security Groups**

---

## Como Executar Localmente

1. **Clonar o Repositório:**

```bash
git clone https://github.com/andrielystarosky/trabalhofinal_cloud.git
cd trabalhofinal_cloud/api-treinos
```

2. **Instalar as Dependências:**

```bash
npm install
```

3. **Executar a API Localmente:**

```bash
npm start
```

4. **Acessar as Rotas (exemplos):**

* Verificar status:
  [http://localhost:3000/status](http://localhost:3000/status)

* Listar programas de treino:
  [http://localhost:3000/programas\_treino\_disponiveis](http://localhost:3000/programas_treino_disponiveis)

---

## Como Rodar os Testes Unitários

```bash
npm test
```

Os testes foram implementados utilizando **Jest** e **Supertest** e cobrem as principais rotas da API.

---

## CI/CD – GitHub Actions

O repositório está integrado com o GitHub Actions.

A cada novo push no branch `main`, os testes são executados automaticamente no pipeline.

Arquivo de Workflow:
`.github/workflows/main.yml`

---

## Provisionamento de Infraestrutura (Terraform)

Infraestrutura provisionada na AWS via **Terraform**, incluindo:

* VPC
* Sub-rede pública
* Instância EC2 Ubuntu
* Security Group com portas 22 (SSH) e 3000 (API)

Arquivos principais:

* `main.tf`
* `variables.tf`
* `outputs.tf`

---

## Deploy Automatizado (Ansible)

Automação de configuração e deploy da API usando **Ansible**, com as seguintes tarefas:

* Instalação do Node.js
* Clone do repositório
* Instalação das dependências
* Execução da API usando **PM2**

Playbook principal:
`ansible/playbook_api.yml`

---

## Link do Repositório

👉 [https://github.com/andrielystarosky/trabalhofinal\_cloud](https://github.com/andrielystarosky/trabalhofinal_cloud)

---

## Autor

**Andriely Starosky e Wilsom Hugen Junior**

Curso: Sistemas de Informação
Instituição: Unidavi
Disciplina: Cloud Computing

---

