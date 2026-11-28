
-- 1. Consultar os responsáveis
SELECT * FROM responsavel;

-- 2. Consultar alunos e seus responsáveis
SELECT
    aluno.nome AS aluno,
    responsavel.nome AS responsavel
FROM aluno
JOIN responsavel
    ON aluno.id_responsavel = responsavel.id_responsavel;

-- 3. Consultar professores e suas turmas
SELECT
    professor.nome AS professor,
    turma.categoria AS turma,
    turma.horario
FROM professor
JOIN turma
    ON professor.id_professor = turma.id_professor;

-- 4. Consultar matrículas, alunos e turmas
SELECT
    aluno.nome AS aluno,
    matricula.status,
    matricula.data_matricula,
    turma.categoria AS turma
FROM matricula
JOIN aluno
    ON matricula.id_aluno = aluno.id_aluno
JOIN turma
    ON matricula.id_turma = turma.id_turma;

-- 5. Consultar responsáveis e seus telefones
SELECT
    responsavel.nome AS responsavel,
    telefone_responsavel.telefone
FROM telefone_responsavel
JOIN responsavel
    ON telefone_responsavel.id_responsavel = responsavel.id_responsavel;

