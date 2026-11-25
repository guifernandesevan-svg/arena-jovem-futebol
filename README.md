# Arena Jovem Futebol
**Sistema de Gestão de uma Escolinha de Futebol**

## 1. Cenário

### 1.1 Descrição da empresa

A Arena Jovem Futebol é uma escolinha fictícia de futebol localizada na cidade de Franca, no estado de São Paulo. A empresa oferece treinamentos esportivos para crianças e adolescentes, buscando desenvolver habilidades técnicas, físicas e sociais por meio da prática do futebol.

A escolinha possui uma única unidade e conta com professores responsáveis pelos treinamentos, além de turmas organizadas para os alunos.

### 1.2 Problema ou necessidade

Atualmente, a administração da Arena Jovem Futebol enfrenta dificuldades para organizar as informações dos alunos, responsáveis, professores, turmas e matrículas.

O controle dessas informações é realizado manualmente, por meio de planilhas e anotações, o que pode ocasionar perda de dados, informações duplicadas e dificuldades na consulta de registros.

Diante dessa situação, surgiu a necessidade de desenvolver um banco de dados capaz de centralizar e organizar as informações da escolinha, facilitando o controle administrativo.

### 1.3 Objetivo do sistema

O objetivo do projeto é desenvolver um banco de dados relacional para a Arena Jovem Futebol, utilizando PostgreSQL por meio da plataforma Supabase.

O sistema deverá permitir o cadastro e a consulta de alunos, responsáveis, professores, turmas e matrículas, facilitando a organização dos treinamentos e o acompanhamento das inscrições dos alunos.

### 1.4 Entidades identificadas

Para atender às necessidades da empresa, foram identificadas cinco entidades:

- **Aluno:** armazena os dados pessoais dos alunos da escolinha.
- **Responsável:** contém as informações dos responsáveis pelos alunos.
- **Professor:** armazena os dados dos profissionais responsáveis pelos treinamentos.
- **Turma:** organiza os alunos em grupos de treinamento, de acordo com categorias e horários.
- **Matrícula:** registra a inscrição de um aluno em uma turma.

### 1.5 Relacionamentos identificados

As entidades possuem relacionamentos que representam o funcionamento da escolinha:

- Um responsável pode estar associado a vários alunos.
- Um aluno pode possuir várias matrículas ao longo do tempo.
- Cada professor pode ser responsável por apenas uma turma.
- Cada turma possui apenas um professor responsável.
- Uma turma pode possuir várias matrículas.
- A entidade Matrícula faz a ligação entre Aluno e Turma, representando o relacionamento muitos para muitos (N:N) entre essas entidades.


## 2. Modelagem Conceitual

## 3. Modelagem Lógica

## 4. Modelagem Física

## 5. Dados

## 6. CRUD

## 7. Relatórios
