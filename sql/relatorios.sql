-- Relatório- 1
SELECT
    aluno.nome AS aluno,
    responsavel.nome AS responsavel,
    turma.categoria AS categoria,
    matricula.status AS situacao
FROM aluno
INNER JOIN responsavel
    ON aluno.id_responsavel = responsavel.id_responsavel
INNER JOIN matricula
    ON aluno.id_aluno = matricula.id_aluno
INNER JOIN turma
    ON matricula.id_turma = turma.id_turma
WHERE matricula.status = 'Ativa'
ORDER BY aluno.nome ASC;
-- Relatório- 2
SELECT
    aluno.nome AS aluno,
    turma.categoria AS categoria,
    professor.nome AS professor
FROM aluno
INNER JOIN matricula
    ON aluno.id_aluno = matricula.id_aluno
INNER JOIN turma
    ON matricula.id_turma = turma.id_turma
INNER JOIN professor
    ON turma.id_professor = professor.id_professor
WHERE turma.categoria = 'Sub-15'
AND matricula.status = 'Ativa'
ORDER BY aluno.nome ASC;
-- Relatório- 3
SELECT
    aluno.nome AS aluno,
    responsavel.nome AS responsavel,
    turma.categoria AS categoria,
    matricula.data_matricula AS data_matricula
FROM matricula
INNER JOIN aluno
    ON matricula.id_aluno = aluno.id_aluno
INNER JOIN responsavel
    ON aluno.id_responsavel = responsavel.id_responsavel
INNER JOIN turma
    ON matricula.id_turma = turma.id_turma
WHERE matricula.status = 'Pendente'
ORDER BY matricula.data_matricula DESC;
-- Relatório- 4
SELECT
    professor.nome AS professor,
    turma.categoria AS categoria,
    turma.horario AS horario,
    turma.capacidade AS capacidade
FROM professor
INNER JOIN turma
    ON professor.id_professor = turma.id_professor
WHERE turma.capacidade >= 25
ORDER BY turma.horario ASC;
-- Relatório- 5
SELECT
    aluno.nome AS aluno,
    responsavel.nome AS responsavel,
    telefone_responsavel.telefone AS telefone
FROM aluno
INNER JOIN responsavel
    ON aluno.id_responsavel = responsavel.id_responsavel
INNER JOIN telefone_responsavel
    ON responsavel.id_responsavel = telefone_responsavel.id_responsavel
WHERE telefone_responsavel.telefone IS NOT NULL
ORDER BY responsavel.nome ASC;
-- Relatório- 6
SELECT
    turma.categoria AS categoria,
    turma.horario AS horario,
    turma.capacidade AS capacidade,
    COUNT(matricula.id_matricula) AS alunos_matriculados,
    turma.capacidade - COUNT(matricula.id_matricula) AS vagas_disponiveis
FROM turma
LEFT JOIN matricula
    ON turma.id_turma = matricula.id_turma
    AND matricula.status = 'Ativa'
WHERE turma.capacidade > 0
GROUP BY
    turma.id_turma,
    turma.categoria,
    turma.horario,
    turma.capacidade
ORDER BY alunos_matriculados DESC;
-- Relatório- 7
SELECT
    aluno.nome AS aluno,
    matricula.data_matricula AS data_matricula,
    turma.categoria AS categoria,
    matricula.status AS situacao
FROM matricula
INNER JOIN aluno
    ON matricula.id_aluno = aluno.id_aluno
INNER JOIN turma
    ON matricula.id_turma = turma.id_turma
WHERE matricula.data_matricula >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY matricula.data_matricula DESC;
-- Relatório- 8
SELECT
    aluno.nome AS aluno,
    aluno.bairro AS bairro,
    aluno.rua AS rua,
    responsavel.nome AS responsavel
FROM aluno
INNER JOIN responsavel
    ON aluno.id_responsavel = responsavel.id_responsavel
WHERE aluno.bairro = 'Centro'
ORDER BY aluno.nome ASC;
-- Relatório- 9
SELECT
    professor.nome AS professor,
    professor.salario AS salario,
    turma.categoria AS categoria,
    turma.horario AS horario
FROM professor
INNER JOIN turma
    ON professor.id_professor = turma.id_professor
WHERE professor.salario >= 3000
ORDER BY professor.salario DESC;
-- Relatório- 10
SELECT
    turma.categoria AS categoria,
    COUNT(matricula.id_matricula) AS total_matriculas
FROM turma
INNER JOIN matricula
    ON turma.id_turma = matricula.id_turma
WHERE matricula.status = 'Ativa'
GROUP BY turma.categoria
ORDER BY total_matriculas DESC;
