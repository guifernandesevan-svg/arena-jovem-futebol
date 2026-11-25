# Arena Jovem Futebol
**Sistema de Gestão de uma Escolinha de Futebol**

## 1. Cenário

### 1.1 Descrição da empresa

A Arena Jovem Futebol é uma escolinha fictícia de futebol localizada na cidade de Franca, no estado de São Paulo. A empresa oferece treinamentos esportivos para crianças e adolescentes, buscando desenvolver habilidades técnicas, físicas e sociais por meio da prática do futebol.

A escolinha possui uma única unidade e conta com professores responsáveis pelos treinamentos, além de turmas organizadas para os alunos.

### 1.2 Problema ou necessidade

Atualmente, a administração da Arena Jovem Futebol enfrenta dificuldades para organizar as informações dos alunos, responsáveis, professores, turmas, matrículas e pagamentos.

O controle dessas informações é realizado manualmente, por meio de planilhas e anotações, o que pode ocasionar perda de dados, informações duplicadas e dificuldades na consulta de registros.

Diante dessa situação, surgiu a necessidade de desenvolver um banco de dados capaz de centralizar e organizar as informações da escolinha, facilitando o controle administrativo e financeiro.

### 1.3 Objetivo do sistema

O objetivo do projeto é desenvolver um banco de dados relacional para a Arena Jovem Futebol, utilizando PostgreSQL por meio da plataforma Supabase.

O sistema deverá permitir o cadastro e a consulta de alunos, responsáveis, professores, turmas, matrículas e pagamentos, além de facilitar o acompanhamento das inscrições e das mensalidades.

### 1.4 Entidades identificadas

Para atender às necessidades da empresa, foram identificadas seis entidades:

- **Aluno:** armazena os dados pessoais dos alunos da escolinha.
- **Responsável:** contém as informações dos responsáveis pelos alunos.
- **Professor:** armazena os dados dos profissionais responsáveis pelos treinamentos.
- **Turma:** organiza os alunos em grupos de treinamento.
- **Matrícula:** registra a inscrição de um aluno em uma turma.
- **Pagamento:** registra os pagamentos realizados pelos alunos referentes às mensalidades.

### 1.5 Relacionamentos identificados

As entidades possuem relacionamentos que representam o funcionamento da escolinha:

- Um responsável pode estar associado a vários alunos.
- Um aluno pode realizar várias matrículas ao longo do tempo.
- Um professor pode ser responsável por várias turmas.
- Uma turma pode possuir várias matrículas.
- Uma matrícula pode possuir vários pagamentos.



## 2. Modelagem Conceitual

## 3. Modelagem Lógica

## 4. Modelagem Física

## 5. Dados

## 6. CRUD

## 7. Relatórios
