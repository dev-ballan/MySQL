create database db_rh;
use db_rh;

create table tb_colaboradores(
	id bigint auto_increment,
    nome varchar(255) not null,
    cargo varchar(255) not null,
    idade	int,
    salario decimal(6.2) not null,
    primary key (id)
);
	insert into tb_colaboradores(nome, cargo, idade, salario)
	values("João", "Engenheiro de Software", 32, 6.400);
    insert into tb_colaboradores(nome, cargo, idade, salario)
	values("Pedro", "Engenheiro Eletricista", 28, 4.100);
    insert into tb_colaboradores(nome, cargo, idade, salario)
	values("Maria", "Estagiária em Obras", 22, 1.900);
    insert into tb_colaboradores(nome, cargo, idade, salario)
	values("Cercondina", "Engenheira Mecânica", 40, 7.000);
    insert into tb_colaboradores(nome, cargo, idade, salario)
	values("José", "Engenheiro da Produção", 25, 3.000);
    
	alter table tb_colaboradores modify salario decimal(8,2);
       
    select * from tb_colaboradores;
    select nome, concat('R$ ', format(salario, 3, 'pt_BR')) as salário from tb_colaboradores;
    select * from tb_colaboradores where salario > 2000.00;
	select * from tb_colaboradores where salario <= 2000.00;
	select * from tb_colaboradores;
    
    update tb_colaboradores set salario = 1.000 where id = 3;
    select * from tb_colaboradores; 
 
    
    
    
    
    
    
    