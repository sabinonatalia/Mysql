-- Criando banco de dados
 create database db_ecommerce;
 
-- Acessando tabela
use db_ecommerce;

-- Criando tabela
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal,
marca  varchar(255) not null,
promocao boolean,
primary key (id)
);

-- Inserir dados
insert into tb_produtos (nome, preco, marca, promocao) values ("Cadeira Gamer Dazz Elite", 569.90, "Dazz", true);
insert into tb_produtos (nome, preco, marca, promocao) values ("Cadeira Gamer Husky Snow", 499.90, "Husky", true);
insert into tb_produtos (nome, preco, marca, promocao) values ("Cadeira Gamer ThunderX3", 1699.90, "ThunderX3", false);
insert into tb_produtos (nome, preco, marca, promocao) values ("Cadeira Gamer Fortrek", 1229.29, "Fortrek", true);
insert into tb_produtos (nome, preco, marca, promocao) values ("Cadeira Gamer Alpha Game", 870.90, "Alpha Game", false);
insert into tb_produtos (nome, preco, marca, promocao) values ("Cadeira Gamer Razer", 1899.90, "Razer", true);
insert into tb_produtos (nome, preco, marca, promocao) values ("Cadeira Gamer Corsair", 2399.90, "Corsair", false);
insert into tb_produtos (nome, preco, marca, promocao) values ("Cadeira Gamer Raven", 1389.90, "Raven", false);

-- Visualizar dados
select * from tb_produtos;
select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;

-- Alterar dados na tabela
update tb_produtos set preco=480.00 where id=2;

