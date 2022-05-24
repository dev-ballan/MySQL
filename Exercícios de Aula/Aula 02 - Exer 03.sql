CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(255),
    data_nascimento date,
    sala int,
    nota decimal(4,2),
    primary key (id)
);

INSERT INTO tb_estudantes(nome, data_nascimento, sala, nota) VALUES("Allan Baad", "1998-05-22", 1, 8.00);
INSERT INTO tb_estudantes(nome, data_nascimento, sala, nota) VALUES("José Maria", "1998-08-20", 3, 9.00);
INSERT INTO tb_estudantes(nome, data_nascimento, sala, nota) VALUES("Antônio Lacerda", "1998-01-15", 4, 6.00);
INSERT INTO tb_estudantes(nome, data_nascimento, sala, nota) VALUES("Maria José", "1998-05-30", 2, 10.00);
INSERT INTO tb_estudantes(nome, data_nascimento, sala, nota) VALUES("João Oliveira", "1998-09-21", 4, 8.00);
INSERT INTO tb_estudantes(nome, data_nascimento, sala, nota) VALUES("Maria Eduarda", "1998-10-12", 5, 5.00);
INSERT INTO tb_estudantes(nome, data_nascimento, sala, nota) VALUES("Luana Piovani", "1998-03-28", 8, 4.00);
INSERT INTO tb_estudantes(nome, data_nascimento, sala, nota) VALUES("Clarice Albuquerque", "1998-12-05", 8, 2.00);

SELECT * FROM tb_estudantes;
DELETE FROM tb_estudantes where id = 1;

SELECT * FROM tb_estudantes WHERE nota > 7.00;

SELECT * FROM tb_estudantes WHERE nota < 7.00;

UPDATE tb_estudantes SET nota = 9.00 WHERE id = 8;

SELECT * FROM tb_estudantes;

