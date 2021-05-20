-- Criando um banco de dados
create database db_funcionarios;
-- Verificando tabela
use db_funcionarios;

-- Criando tabela
create table tb_informacoes(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
salario decimal not null,
primary key (id)
);

alter table tb_informacoes add admissao varchar(255);

-- Inserir dados 
insert into tb_informacoes (nome, cargo, salario, admissao) values ("Fernanda", "Operadora de caixa", 2000.00, "10/01/20");
insert into tb_informacoes (nome, cargo, salario, admissao) values ("Maria", "Supervirora de loja", 2300.00, "11/09/12");
insert into tb_informacoes (nome, cargo, salario, admissao) values ("Anderson", "Gerente da loja", 4500.00, "12/05/17");
insert into tb_informacoes (nome, cargo, salario, admissao) values ("Maria", "Gerente da loja", 4500.00, "18/08/19");

-- Visualizar dados
select * from tb_informacoes;
select * from tb_informacoes where salario > 2000.00;
select * from tb_informacoes where salario < 2000.00;

-- Alterar dados 
update tb_informacoes set salario=2500.00 where id=1;
update tb_informacoes set salario=1900.00 where id=1;