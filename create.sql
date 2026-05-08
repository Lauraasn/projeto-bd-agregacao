-- Tabela de Funcionários com Autorrelacionamento (Hierarquia)

CREATE TABLE pessoaKUN (
 id SERIAL PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 funcionario_id INTEGER REFERENCES pessoaKUN(id)
);

CREATE TABLE funcionarioKUN (
 id SERIAL PRIMARY KEY,
 supervisor_id INTEGER NOT NULL REFERENCES pessoaKUN(id),
 pessoa_id INTEGER NOT NULL,
 CONSTRAINT fk_pessoaKUN 
 FOREIGN KEY (pessoa_id) 
 REFERENCES pessoaKUN(id) 
 ON DELETE CASCADE
);

CREATE TABLE projetoKUN (
 id SERIAL PRIMARY KEY,
 nome_projeto VARCHAR(100) NOT NULL
);

-- Tabela que representa a Agregação (Relacionamento Funcionario-Projeto + Equipamento)
CREATE TABLE alocacao_equipamentoKUN (
 id SERIAL PRIMARY KEY,
 funcionario_id INTEGER,
 projeto_id INTEGER,
 nome_equipamento VARCHAR(100),
 FOREIGN KEY (funcionario_id) REFERENCES funcionario(id),
 FOREIGN KEY (projeto_id) REFERENCES projeto(id)
);
