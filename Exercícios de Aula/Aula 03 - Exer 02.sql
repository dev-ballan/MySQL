CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tamanho VARCHAR(55),
    tipo VARCHAR(20),
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(20),
    valor DECIMAL (5,2),
    descricao VARCHAR(55),
    borda VARCHAR(20),
    categorias_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);
	INSERT INTO tb_categorias (tamanho, tipo) VALUES ("Grande", "Salgada");
    INSERT INTO tb_categorias (tamanho, tipo) VALUES ("Média", "Salgada");
    INSERT INTO tb_categorias (tamanho, tipo) VALUES ("Pequena", "Doce");
    INSERT INTO tb_categorias (tamanho, tipo) VALUES ("Brotinho", "Doce");
    INSERT INTO tb_categorias (tamanho, tipo) VALUES ("Tamanho Família", "Salgada");
    
    INSERT INTO tb_pizzas (nome, valor, descricao, borda, categorias_id) VALUES ("Portuguesa", "34.99", "Pizza com queijo, presunto e ovo", "Catupiry", 1);
    INSERT INTO tb_pizzas (nome, valor, descricao, borda, categorias_id) VALUES ("Quatro Queijos", "38.99", "Pizza com quatro tipo de queijos", "Queijo", 2);
    INSERT INTO tb_pizzas (nome, valor, descricao, borda, categorias_id) VALUES ("Pizza de Chocolate", "30.99", "Chocolate com morango", "Sem borda", 3);
    INSERT INTO tb_pizzas (nome, valor, descricao, borda, categorias_id) VALUES ("Calabresa", "32.99", "Calabresa com cebolas", "Catupiry", 5);
    INSERT INTO tb_pizzas (nome, valor, descricao, borda, categorias_id) VALUES ("Frango com Catupiry", "36.99", "Frango desfiado com Catupiry", "Cheddar", 1);
    INSERT INTO tb_pizzas (nome, valor, descricao, borda, categorias_id) VALUES ("Peperoni", "40.99", "Queijo com peperoni", "Cheddar", 2);
    INSERT INTO tb_pizzas (nome, valor, descricao, borda, categorias_id) VALUES ("Doce de Prestígio", "21.90", "Com cocô ralado e chocolate", "Sem borda", 4);
    INSERT INTO tb_pizzas (nome, valor, descricao, borda, categorias_id) VALUES ("Á moda da Casa", "42.99", "Pizza Tudão", "Cheddar", 5);
    
    SELECT * FROM tb_pizzas;
    SELECT * FROM tb_categorias;
    
    SELECT * FROM tb_pizzas WHERE valor > 45.00; 
    UPDATE tb_pizzas SET valor = 46.99 WHERE id = 8;
    SELECT * FROM tb_pizzas WHERE valor > 45.00; 
    
    SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
    UPDATE tb_pizzas SET valor = 52.00 WHERE id = 5;
	SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
    
    SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
    
    SELECT * FROM tb_pizzas INNER JOIN tb_categorias
    ON tb_pizzas.categorias_id = tb_categorias.id;
    
    SELECT nome, tb_categorias.tipo FROM tb_pizzas INNER JOIN tb_categorias
    ON tb_pizzas.categorias_id = tb_categorias.id WHERE tipo LIKE "%Doce%";
    
    
    
    
    
    