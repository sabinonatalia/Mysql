create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar (150) not null,
primary key (id)
);

insert into tb_classe (nome, habilidade) 
values 
("VAMPIRO","SUPER VELOCIDADE"),         
("VAMPIRO", "MORDIDA APRIMORADA"),
("VAMPIRO", "SANGUE CURATIVO"),
("VAMPIRO", "SUPER FORÇA"),
("VAMPIRO", "MENTE OFENSIVA");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
biografia varchar(255) not null,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem (nome, biografia, ataque, defesa, classe_id)
values
("ANNE", "SÁBIA", 3200, 3000, 1),
("DAMON", "ESTRELA", 3000, 2800, 1),
("ELEONOR","ALEGRE", 2500, 2000, 2),
("STEFAN","PROTETOR", 4000, 3500, 5),
("BONNIE", "CENTRADO", 3500, 3000, 4),
("JASON", "ANIMADO", 2200, 2000, 3),
("ARIEL", "´LÍDER", 4500, 3200, 5),
("SOOKIE","APRENDIZ", 2000, 1000, 1);

select * from tb_personagem;
select * from tb_classe;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where ataque > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where defesa between 1000 and 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome like "%C%";

-- Faça um um select com Inner join entre tabela classe e personagem.
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- Faça um select onde traga todos os personagem de uma classe específica
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 2;










