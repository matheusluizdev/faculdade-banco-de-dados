USE db_faculdade;
SHOW TABLES;
SELECT * FROM Aluno;

-- Ver todos os alunos
SELECT * FROM Aluno;

-- Ver todos os cursos
SELECT * FROM Curso;

-- Ver todos os professores
SELECT * FROM Professor;

-- Ver todas as disciplinas
SELECT * FROM Disciplina;

-- Ver todos os departamentos
SELECT * FROM Departamento;

-- Alunos e o nome de seus cursos
SELECT a.Nome_Aluno, a.Sobrenome_Aluno, c.Nome_Curso
FROM Aluno a
JOIN Curso c ON a.Cod_Curso = c.Cod_Curso;

-- Cursos e seus departamentos
SELECT c.Nome_Curso, d.Nome_Departamento
FROM Curso c
JOIN Departamento d ON c.Cod_Departamento = d.Cod_Departamento;

-- Professores e as disciplinas que ministram
SELECT p.Nome_Professor, p.Sobrenome_Professor, di.Nome_Disciplina
FROM Professor p
JOIN Prof_Disciplina pd ON p.Cod_Professor = pd.Cod_Professor
JOIN Disciplina di ON pd.Cod_Disciplina = di.Cod_Disciplina;

-- Quantidade de disciplinas por professor
SELECT p.Nome_Professor, p.Sobrenome_Professor, COUNT(pd.Cod_Disciplina) AS Total_Disciplinas
FROM Professor p
LEFT JOIN Prof_Disciplina pd ON p.Cod_Professor = pd.Cod_Professor
GROUP BY p.Nome_Professor, p.Sobrenome_Professor;

-- Listar todos os professores que não ministram disciplinas (caso existam)
SELECT p.Nome_Professor, p.Sobrenome_Professor
FROM Professor p
LEFT JOIN Prof_Disciplina pd ON p.Cod_Professor = pd.Cod_Professor
WHERE pd.Cod_Professor IS NULL;
