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

-- Relatório- 3

-- Relatório- 4

-- Relatório- 5

-- Relatório- 6

-- Relatório- 7

-- Relatório- 8

-- Relatório- 9

-- Relatório- 10
