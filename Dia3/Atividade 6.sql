create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) 
values
("MÚSICA", true),
("ARTES", true),
("PROGRAMAÇÃO", true),
("CULINÁRIA", true),
("LÍNGUAS", true);

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(10,2) not null,
duracao int , -- semanas
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert tb_produtos (nome, preco, duracao, categoria_id) 
values
("VIOLÃO", 100.00, 10, 1),
("SAXOFONE", 150.00, 20, 1),
("BISCUIT", 40.00, 20, 2),
("PINTURA", 80.00, 10, 2),
("JAVASCRIPT", 110.00, 5, 3),
("PYTHON", 120.00, 5, 3),
("CONFEITARIA", 0.00, 8, 4),
("INGLÊS", 0.00, 10, 5);

select * from tb_categoria;
select * from tb_produtos;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produtos where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produtos where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J.
select * from tb_produtos where nome like "J%"; 

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- -- Faça um select onde traga todos os Produtos de uma categoria específica.
select * from tb_produtos inner join tb_categoria 
on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.id = 3;