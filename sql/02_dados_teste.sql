INSERT INTO responsavel (
    nome,
    cpf,
    data_nascimento,
    rua,
    numero,
    bairro,
    cep
)
VALUES (
    'Carlos Oliveira',
    '123.456.789-00',
    '1985-04-15',
    'Rua das Flores',
    '120',
    'Centro',
    '14400-000'
);


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
VALUES (
    'João Oliveira',
    '2012-08-20',
    'Rua das Palmeiras',
    '45',
    'Centro',
    '14400-100',
    CURRENT_DATE,
    1
);



INSERT INTO professor (
    nome,
    cpf,
    data_nascimento,
    salario,
    data_contratacao
)
VALUES (
    'Roberto Silva',
    '987.654.321-00',
    '1980-05-10',
    3500.00,
    '2024-02-01'
);


INSERT INTO turma (
    categoria,
    horario,
    capacidade,
    id_professor
)
VALUES (
    'Sub-15',
    '15:00:00',
    25,
    1
);


INSERT INTO matricula (
    data_matricula,
    status,
    id_aluno,
    id_turma
)
VALUES (
    CURRENT_DATE,
    'Ativa',
    1,
    1
);



INSERT INTO telefone_responsavel (
    telefone,
    id_responsavel
)
VALUES (
    '(16) 99999-1234',
    1
);
