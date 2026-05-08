-- LEFT JOIN: Todos os alunos, com ou sem notas
SELECT
    f.nome AS funcionario,
    s.nome AS supervisor
FROM pessoaKUN f
LEFT JOIN pessoaKUN s
ON f.funcionario_id = s.id
ORDER BY f.nome;
