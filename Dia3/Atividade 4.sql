create database db_cidade_da_carne;
use db_cidade_da_carne;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("BOVINO",true);
insert tb_categoria (descricao, ativo) values ("SUÍNO",true);
insert tb_categoria (descricao, ativo) values ("AVES",true);
insert tb_categoria (descricao, ativo) values ("PERTENCE A FEIJOADA",true);
insert tb_categoria (descricao, ativo) values ("EMBUTIDOS",true);

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("ASA DE FRANGO",40.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("PICANHA",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("MOCOTÓ",20.00,30,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("BACON",30.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("HAMBÚRGUER",60.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("CUPIM",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("PEITO DE FRANGO",25.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("ORELHA DE PORCO",20.00,30,4);

select * from tb_categoria;
select * from tb_produtos;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produtos where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produtos where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produtos where nome like "B%"; 

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- -- Faça um select onde traga todos os Produtos de uma categoria específica.
select * from tb_produtos inner join tb_categoria 
on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.id = 3;