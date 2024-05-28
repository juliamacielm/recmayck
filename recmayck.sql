use repescagem_22c;
CREATE TABLE Medicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    especialidade_cario VARCHAR (100) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(200),
    data_contratacao DATE NOT NULL,
    horario_trabalho VARCHAR(50),
    status ENUM('Ativo', 'Inativo') DEFAULT 'Ativo',
    salario DECIMAL(10, 2),
    data_nascimento DATE,
    genero ENUM('Masculino', 'Feminino', 'Outro'),
    especializacoes_adicionais TEXT
);

INSERT INTO especialidade_cardiovascular (
select nome, especialidade 
from Medicos
);

insert into data_contratacao (
select nome, data_contratacao
from Medicos
order by data_contratacao asc
);

insert into especializacoes_adicionais (
select nome, especializacoes_adicionais
from Medicos
);

select * from Medicos;
select nomes, email
order by nome asc 

