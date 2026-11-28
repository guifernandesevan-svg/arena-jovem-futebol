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
    'Pedro Santos',
    '2011-06-15',
    'Rua do Futebol',
    '25',
    'Centro',
    '14400-000',
    CURRENT_DATE,
    1
);

SELECT *
FROM aluno
WHERE nome = 'Pedro Santos';



UPDATE aluno
SET bairro = 'Jardim Paulista'
WHERE nome = 'Pedro Santos';

SELECT *
FROM aluno
WHERE nome = 'Pedro Santos';




DELETE FROM aluno
WHERE nome = 'Pedro Santos';

SELECT *
FROM aluno
WHERE nome = 'Pedro Santos';
