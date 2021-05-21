create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,
categoria varchar(255) not null,
ataque int not null,
defesa int not null,
primary key (id)
);

insert into tb_classe (categoria, ataque, defesa) 
values 
("Easy", 1000, 500),
("Regular", 1500, 1000),
("Premium", 2000, 1500),
("Gold", 2500, 2000),
("Super Gold", 3000, 2500);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255) not null,
fraqueza varchar(255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_classe (id)
);

insert into tb_personagem (nome, habilidade, fraqueza, categoria_id)
values
("Anne", "Super Velocidade", "Simbolos religiosos", 2),
("Damon", "Mordida aprimorada", "Água Benta", 1),
("Eleonor","Sangue Curativo", "Sol", 3),
("Stefan","Super Força","Prata", 5),
("Bonnie", "Mente Ofensiva", "Madeira", 5 ),
("Jason", "Super Velocidade", "Sol", 1),
("Ariel", "Sentido Aguçado", "Fogo", 4),
("Sookie","Resistência Mnetal", "Baixa estatura muscular", 4);

select * from tb_personagem;

select tb_personagem.nome, tb_classe.ataque from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id where tb_classe.ataque>2000;

select tb_personagem.nome, tb_classe.ataque from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id where tb_classe.ataque between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select tb_personagem.nome, tb_personagem.habilidade, tb_personagem.fraqueza, tb_classe.ataque, tb_classe.defesa from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id;

select * from tb_personagem where habilidade = "Super Velocidade";
