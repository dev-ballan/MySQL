CREATE DATABASE db_commerce;

USE db_commerce;

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome_produto varchar(255),
    tipo varchar(100),
    descricao varchar(255),
    preco decimal(7,2),
    primary key (id)
);

	INSERT INTO tb_produto(nome_produto, tipo, descricao, preco) VALUES("Blusa", "Roupas", "Blusa de frio, tamanho G", 120.00);
    INSERT INTO tb_produto(nome_produto, tipo, descricao, preco) VALUES("Tênis Nike", "Calçados", "Tênis, tamanho 42", 357.00);
    INSERT INTO tb_produto(nome_produto, tipo, descricao, preco) VALUES("Leite Ninho", "Alimentos", "Leite Ninho Nestle 1L ", 6.80);
    INSERT INTO tb_produto(nome_produto, tipo, descricao, preco) VALUES("Macarrão Instantâneo", "Alimentos", "Macarrão Instantâneo Nissin", 2.49);
    INSERT INTO tb_produto(nome_produto, tipo, descricao, preco) VALUES("MacBook Apple", "Eletrônicos", "Notebook Apple Macbook M1", 12000.00);
    INSERT INTO tb_produto(nome_produto, tipo, descricao, preco) VALUES("Projetor", "Eletrônicos", "Data show Projetor", 4000.00);
    INSERT INTO tb_produto(nome_produto, tipo, descricao, preco) VALUES("Fogão", "Eletrodoméstico", "Fogão Eletrolux 6 bocas", 2459.10);
    INSERT INTO tb_produto(nome_produto, tipo, descricao, preco) VALUES("Mesa", "Movéis", "Mesa 6 cadeiras", 1799.00);
    
    SELECT * FROM tb_produto;
    
    SELECT * FROM tb_produto WHERE preco > 500;
    
	SELECT * FROM tb_produto WHERE preco < 500;
    
    UPDATE tb_produto SET preco = 8999.00 WHERE id = 6;
    
	SELECT * FROM tb_produto;
    