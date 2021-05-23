create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) 
values
("ÉLETRICA", true),
("HIDRAÚLICA", true),
("PISOS E REVESTIMENTOS", true),
("BANHEIRO", true),
("FERRAMENTAS", true);

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) 
values
("FITA ISOLANTE", 23.00, 12, 1),
("CONECTOR BIPOLAR", 9.00, 15, 1),
("CANO SOLDÁVEL", 40.00, 20, 2),
("CHUVEIRO", 80.00, 5, 2),
("PISO MARMÓRE", 75.00, 23, 3),
("PORCELANATO", 60.00, 50, 3),
("ASSENTO", 43.00, 8, 4),
("BROCA", 9.00, 30, 5);

select * from tb_categoria;
select * from tb_produtos;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produtos where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produtos where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produtos where nome like "C%"; 

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- -- Faça um select onde traga todos os Produtos de uma categoria específica.
select * from tb_produtos inner join tb_categoria 
on tb_categoria.id = tb_produtos.categoria_id
where descricao = "HIDRAÚLICA";
