Dados Responsável
INSERT INTO responsavel (
    nome,
    cpf,
    data_nascimento,
    rua,
    numero,
    bairro,
    cep
)
SELECT
    'Responsável ' || i,
    SUBSTRING(LPAD(i::TEXT, 11, '0'), 1, 3) || '.' ||
    SUBSTRING(LPAD(i::TEXT, 11, '0'), 4, 3) || '.' ||
    SUBSTRING(LPAD(i::TEXT, 11, '0'), 7, 3) || '-' ||
    SUBSTRING(LPAD(i::TEXT, 11, '0'), 10, 2),
    DATE '1970-01-01' + (i * 30),
    'Rua dos Esportes',
    i::TEXT,
    'Centro',
    '14400-000'
FROM generate_series(2, 500) AS i;

Dados Professor
INSERT INTO professor (
    nome,
    cpf,
    data_nascimento,
    salario,
    data_contratacao
)
SELECT
    'Professor ' || i,
    SUBSTRING(LPAD(i::TEXT, 11, '0'), 1, 3) || '.' ||
    SUBSTRING(LPAD(i::TEXT, 11, '0'), 4, 3) || '.' ||
    SUBSTRING(LPAD(i::TEXT, 11, '0'), 7, 3) || '-' ||
    SUBSTRING(LPAD(i::TEXT, 11, '0'), 10, 2),
    DATE '1975-01-01' + (i * 30),
    2500.00 + (i * 2),
    DATE '2020-01-01' + (i * 10)
FROM generate_series(2, 500) AS i;

Dados Turma
INSERT INTO turma (
    categoria,
    horario,
    capacidade,
    id_professor
)
SELECT
    CASE
        WHEN i % 4 = 0 THEN 'Sub-11'
        WHEN i % 4 = 1 THEN 'Sub-13'
        WHEN i % 4 = 2 THEN 'Sub-15'
        ELSE 'Sub-17'
    END,
    TIME '08:00:00' + (i % 8) * INTERVAL '1 hour',
    20 + (i % 11),
    i
FROM generate_series(2, 500) AS i;

Dados Aluno
INSERT INTO aluno (
    nome,
    data_nascimento,
    rua,
    numero,
    bairro,
    cep,
    data_cadastro,
    id_responsavel
)
SELECT
    'Aluno ' || i,
    DATE '2008-01-01' + (i * 5),
    'Rua dos Atletas',
    i::TEXT,
    'Centro',
    '14400-000',
    CURRENT_DATE,
    i
FROM generate_series(2, 500) AS i;

Dados Matrícula
INSERT INTO matricula (
    data_matricula,
    status,
    id_aluno,
    id_turma
)
SELECT
    CURRENT_DATE - (i % 365),
    CASE
        WHEN i % 5 = 0 THEN 'Pendente'
        ELSE 'Ativa'
    END,
    i,
    i
FROM generate_series(2, 500) AS i;

Dados Telefone Resposável
INSERT INTO telefone_responsavel (
    telefone,
    id_responsavel
)
SELECT
    '(16) 9' || LPAD(i::TEXT, 4, '0') ||
    '-' || LPAD((i * 7)::TEXT, 4, '0'),
    i
FROM generate_series(2, 500) AS i;
