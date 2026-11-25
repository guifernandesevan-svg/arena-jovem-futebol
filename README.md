# Arena Jovem Futebol
**Sistema de Gestão de uma Escolinha de Futebol**

## 1. Cenário

### 1.1 Descrição da empresa

A Arena Jovem Futebol é uma escolinha fictícia de futebol localizada na cidade de Franca, no estado de São Paulo. A empresa oferece treinamentos esportivos para crianças e adolescentes, com o objetivo de desenvolver habilidades técnicas, físicas e sociais por meio da prática do futebol.

A escolinha possui uma única unidade e conta com professores responsáveis pelos treinamentos, turmas organizadas por faixa etária e alunos matriculados em diferentes categorias.

### 1.2 Problema ou necessidade

Atualmente, a administração da Arena Jovem Futebol enfrenta dificuldades para organizar as informações dos alunos, responsáveis, professores, turmas, matrículas e pagamentos. O controle dessas informações é realizado manualmente, por meio de planilhas e anotações, o que pode ocasionar perda de dados, informações duplicadas e dificuldades para consultar registros.

Diante dessa situação, surgiu a necessidade de desenvolver um banco de dados capaz de centralizar e organizar todas as informações da escolinha, facilitando o controle administrativo e contribuindo para uma gestão mais eficiente.

### 1.3 Objetivo do sistema

O objetivo do projeto é desenvolver um banco de dados relacional para a Arena Jovem Futebol, utilizando o PostgreSQL por meio da plataforma Supabase.

O sistema deverá permitir o armazenamento e a consulta de informações sobre alunos, responsáveis, professores, turmas, matrículas, contratos, pagamentos, aulas e presenças.

Além disso, o banco deverá possibilitar o acompanhamento das matrículas, o controle financeiro das mensalidades e o registro da frequência dos alunos nos treinamentos.

### 1.4 Entidades identificadas

Para atender às necessidades da empresa, foram identificadas as seguintes entidades principais:

- **Aluno:** armazena os dados pessoais dos alunos matriculados.
- **Responsável:** contém as informações dos responsáveis pelos alunos.
- **Telefone_Responsavel:** registra os números de telefone dos responsáveis.
- **Professor:** armazena os dados dos profissionais que ministram os treinamentos.
- **Turma:** organiza os alunos em grupos de treinamento.
- **Matrícula:** registra a inscrição de um aluno em uma turma.
- **Contrato:** armazena as informações contratuais relacionadas à matrícula.
- **Pagamento:** registra os pagamentos das mensalidades.
- **Aula:** armazena as informações das aulas realizadas.
- **Presença:** registra a frequência dos alunos nas aulas.

### 1.5 Relacionamentos identificados

As entidades possuem relacionamentos que representam o funcionamento da escolinha:

- Um responsável pode estar associado a vários alunos.
- Um responsável pode possuir vários números de telefone.
- Um professor pode ministrar várias turmas.
- Uma turma pode possuir várias aulas.
- Um aluno pode realizar várias matrículas ao longo do tempo.
- Cada matrícula está vinculada a um contrato.
- Uma matrícula pode possuir vários pagamentos.
- Uma matrícula pode possuir vários registros de presença.
- Uma aula pode possuir vários registros de presença.

Esses relacionamentos permitirão organizar as informações e garantir a integridade dos dados armazenados no banco.

## 2. Modelagem Conceitual

## 3. Modelagem Lógica

## 4. Modelagem Física

## 5. Dados

## 6. CRUD

## 7. Relatórios
