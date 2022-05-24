create database db_quitanda;
use db_quitanda;

create table tb_produtos(
	id bigint auto_increment, 
    nome varchar(255) not null, -- não permite que o dado esteja vazio
    quantidade int,
    data_validade date,
    preco decimal not null,
    primary key (id)
);

insert into tb_produtos(nome, quantidade, data_validade, preco)
values("Mexirica", 20, "2022-05-30", 8.99);

insert into tb_produtos(nome, quantidade, data_validade, preco)
values("Maça", 2000, "2022-05-29", 6.00);

insert into tb_produtos(nome, quantidade, data_validade, preco)
values("Laranja", 200, "2022-05-28", 12.55);

insert into tb_produtos(nome, quantidade, data_validade, preco)
values("Tomate", 210, "2022-05-26", 18.99);

insert into tb_produtos(nome, quantidade, data_validade, preco)
values("Limão", 300, "2022-05-25", 2.99);

update tb_produtos set preco = 8.99 where id = 1; -- set modifica

delete from tb_produtos where id = 3;
delete from tb_produtos;

select * from tb_produtos;

set sql_safe_updates = 1;

select * from tb_produtos order by nome;

select * from tb_produtos order by nome desc;

select nome_produto, concat('R$ ', format(preco, 2, 'pt_BR')) as preço from tb_produtos;

alter table tb_produtos add descricao varchar(500);

alter table tb_produtos modify preco decimal(6,2); -- 0000.00

alter table tb_produtos drop descricao;

alter table tb_produtos change nome nome_produto varchar(255);


