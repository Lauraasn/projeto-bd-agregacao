
-- Supervisor principal
INSERT INTO pessoaKUN (nome, funcionario_id)
VALUES ('Carlos Silva', NULL);

-- Funcionários subordinados ao Carlos
INSERT INTO pessoaKUN (nome, funcionario_id)
VALUES 
('Ana Souza', 1),
('Bruno Lima', 1),
('Fernanda Rocha', 1);

-- Funcionários subordinados à Ana
INSERT INTO pessoaKUN (nome, funcionario_id)
VALUES
('Lucas Martins', 2),
('Juliana Alves', 2);

-- =========================================
-- INSERTS DA TABELA funcionario1
-- =========================================

INSERT INTO funcionarioKUN (supervisor_id, pessoa_id)
VALUES
(1, 2), -- Ana supervisionada por Carlos
(1, 3), -- Bruno supervisionado por Carlos
(1, 4), -- Fernanda supervisionada por Carlos
(2, 5), -- Lucas supervisionado por Ana
(2, 6); -- Juliana supervisionada por Ana

-- =========================================
-- INSERTS DA TABELA projeto1
-- =========================================

INSERT INTO projetoKUN (nome_projeto)
VALUES
('Sistema de Estoque'),
('Aplicativo Mobile'),
('Portal Web');

-- =========================================
-- INSERTS DA TABELA alocacao_equipamento1
-- =========================================

INSERT INTO alocacao_equipamentoKUN
(funcionario_id, projeto_id, nome_equipamento)
VALUES
(1, 1, 'Notebook Dell'),
(2, 1, 'Monitor LG'),
(3, 2, 'iPhone 15'),
(4, 3, 'Notebook Lenovo'),
(5, 2, 'Tablet Samsung');
