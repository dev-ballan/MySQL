CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    tipo_classe VARCHAR (20),
    sexo VARCHAR (10),
    PRIMARY KEY (id)
);

	INSERT INTO tb_classes (tipo_classe, sexo) VALUES ("Guerreiro", "Masculino"); -- 1
    INSERT INTO tb_classes (tipo_classe, sexo) VALUES ("Guerreira", "Feminino");  -- 2
    INSERT INTO tb_classes (tipo_classe, sexo) VALUES ("Atirador", "Masculino"); -- 3
    INSERT INTO tb_classes (tipo_classe, sexo) VALUES ("Atiradora", "Feminino"); -- 4
    INSERT INTO tb_classes (tipo_classe, sexo) VALUES ("Maga", "Feminino"); -- 5
    INSERT INTO tb_classes (tipo_classe, sexo) VALUES ("Mago", "Masculino"); -- 6
	INSERT INTO tb_classes (tipo_classe, sexo) VALUES ("Assassina", "Feminino"); -- 7
    INSERT INTO tb_classes (tipo_classe, sexo) VALUES ("Assassino", "Masculino"); -- 8
    INSERT INTO tb_classes (tipo_classe, sexo) VALUES ("Suporte", "Feminino"); -- 9
    INSERT INTO tb_classes (tipo_classe, sexo) VALUES ("Suporte", "Masculino"); -- 10
    
    SELECT * FROM tb_classes;
    
    CREATE TABLE tb_personagens(
		id BIGINT AUTO_INCREMENT,
        nome VARCHAR (20),
        idade INT,
        altura DECIMAL (3,2),
        poder_ataque INT,
        poder_defesa INT,
        personagem_id BIGINT,
        PRIMARY KEY (id),
        FOREIGN KEY (personagem_id) REFERENCES tb_classes(id)
    );
		
		INSERT INTO tb_personagens (nome, idade, altura, poder_ataque, poder_defesa, personagem_id) 
        VALUES ("Valquíria", 24, 1.70, 2500, 1700, 2);
        INSERT INTO tb_personagens (nome, idade, altura, poder_ataque, poder_defesa, personagem_id) 
        VALUES ("Arthur", 18, 1.80, 2200, 2500, 1);
        INSERT INTO tb_personagens (nome, idade, altura, poder_ataque, poder_defesa, personagem_id) 
        VALUES ("Valhein", 16, 1.73, 3400, 1100, 3);
        INSERT INTO tb_personagens (nome, idade, altura, poder_ataque, poder_defesa, personagem_id) 
        VALUES ("Tel'Annas", 20, 1.71, 3500, 1000, 4);
        INSERT INTO tb_personagens (nome, idade, altura, poder_ataque, poder_defesa, personagem_id) 
        VALUES ("Liliana", 16, 1.60, 2000, 1400, 5);
        INSERT INTO tb_personagens (nome, idade, altura, poder_ataque, poder_defesa, personagem_id) 
        VALUES ("Zata", 25, 1.55, 2300, 1300, 6);
        INSERT INTO tb_personagens (nome, idade, altura, poder_ataque, poder_defesa, personagem_id) 
        VALUES ("Butterfly", 18, 1.58, 1900, 1950, 7);
        INSERT INTO tb_personagens (nome, idade, altura, poder_ataque, poder_defesa, personagem_id) 
        VALUES ("Maloch", 29, 1.85, 2900, 2800, 8);
        INSERT INTO tb_personagens (nome, idade, altura, poder_ataque, poder_defesa, personagem_id) 
        VALUES ("Alice", 16, 1.50, 900, 3100, 9);
        INSERT INTO tb_personagens (nome, idade, altura, poder_ataque, poder_defesa, personagem_id) 
        VALUES ("Graak", 21, 1.78, 800, 3300, 10);
        
        SELECT * FROM tb_personagens;
        
        SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
        
        SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
        
        SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
        
        SELECT * FROM tb_personagens INNER JOIN tb_classes
		ON tb_personagens.personagem_id = tb_classes.id;
        
        SELECT nome, tb_classes.tipo_classe FROM tb_personagens INNER JOIN tb_classes
        ON tb_personagens.personagem_id = tb_classes.id;
        
        
        
        
        
        
        
    