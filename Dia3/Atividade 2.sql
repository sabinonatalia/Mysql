-- Criando banco de dados
create database db_pizzaria_legal;

use db_pizzaria_legal;

-- Criando as tabelas
create table tb_categoria(
id bigint auto_increment,
nome varchar(30) not null,
preco decimal (10,2) not null,
primary key (id)
);

create table tb_pizza(
id bigint auto_increment,
sabor varchar(30) not null,
tamanho varchar(20) not null,
quantidade int not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Inserindo dados
insert into tb_categoria (nome, preco)
values
("EMICIDA",45),
("MANO BROWN", 53),
("KAROL CONKÁ", 47),
("DRIK BARBOSA", 50),
("DJONGA", 52);

insert into tb_pizza (sabor, tamanho, quantidade, categoria_id)
values
("MUÇARELA", "GRANDE", 2, 3),
("BRIGADEIRO","BROTINHO",5, 4),
("TRÊS QUEIJOS", "GRANDE", 3, 5),
("TOSCANA", "MÉDIA", 4, 2),
("MARGUERITA", "MÉDIA", 2, 1),
("ROMEU E JULIETA", "MÉDIA", 3, 2),
("FRANGO", "GRANDE", 2, 1),
("M&Ms", "BROTINHO", 3, 4);

select * from tb_categoria;
select * from tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_categoria where preco > 45;

-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
select * from tb_categoria where preco between 29 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_categoria where nome like "%C%";

-- Faça um um select com Inner join entre  tabela categoria e pizza.
select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.nome = "KAROL CONKÁ";