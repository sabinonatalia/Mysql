create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(100) not null,
descricao varchar (100) not null,
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (10,2) not null,
farmapop boolean not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria( categoria, descricao)
values
("MERCEARIA", "CHOCOLATE"),
("PERFUMARIA", "USUAL"),
("GÉNERICO", "MEDICAMENTOS"),
("PRESCRIÇÃO", "MEDICAMENTOS"),
("VITAMINA", "VITAMINAS");

insert  into tb_produto(nome, preco, farmapop, categoria_id)
values
("CHOC.LOLLO", 2.50, false, 1), 
("PRESERVATIVO OLLA", 4.50, false, 2),
("DORFLEX c/ 10", 5.00, false, 4),
("NASONEX", 57.00, false, 4),
("LOSARTANA 50MG", 9.90, true, 3),
("D. DPREV 7000UI", 63.00, false, 5),
("PROT. SOLAR 30", 45.00, false, 2),
("BEPANTRIZ", 6.00, false, 2);

select * from tb_categoria;
select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "B%"; 

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica.
select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 5;
