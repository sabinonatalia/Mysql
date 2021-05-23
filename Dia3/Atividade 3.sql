create database db_escola;

use db_escola;

create table tb_informacoes(
id bigint auto_increment,
nome varchar(225) not null,
turma varchar(255),
nota decimal,
professor varchar(255),
primary key (id)
);
alter table tb_informacoesaluno modify nota decimal(5,2);

insert into tb_informacoes(nome,turma,nota,professor) values ("Ana", "Turma A", 8.00, "Marcio");
insert into tb_informacoes(nome,turma,nota,professor) values ("Marcela", "Turma B", 8.0, "Marcio");
insert into tb_informacoes(nome,turma,nota,professor) values ("Maria", "Turma c", 6.0, "Marcio");
insert into tb_informacoes(nome,turma,nota,professor) values ("Mário", "Turma D", 8.0, "Marcio");
insert into tb_informacoes(nome,turma,nota,professor) values ("Carla", "Turma E", 9.0, "Marcio");
insert into tb_informacoes(nome,turma,nota,professor) values ("Anderson", "Turma F", 10.0, "Marcio");
insert into tb_informacoes(nome,turma,nota,professor) values ("João", "Turma G", 5.0, "Marcio");
insert into tb_informacoes(nome,turma,nota,professor) values ("Carlos", "Turma H", 7.0, "Marcio");

select * from tb_informacoes;
select * from tb_informacoes  where nota > 7.0;
select * from tb_informacoes where nota < 7.0;

update tb_informacoes set nota=7.0 where id=2;