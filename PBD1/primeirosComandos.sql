-- Criar um Novo Banco de Dados
create database bdINF2HM

-- Usar o Banco de Dados
use bdINF2HM

-- Criar uma Nova Tabela no Banco de Dados
create table turma
(--Identiti, torna o campo auto numérico
	id			int				identity,
	nome		varchar(6)		not null,
	curso		varchar(30)		not null,
	serie		varchar(20)		not null,
	ano			char(4)			not null,
	turma_id	int				not null,
	primary key	(id)			not null
)

insert turma
(				
	nome,
	curso, 
	serie, 
	ano, 
)
values
(
	'inf2hm',
	'informatica',
	'2ª serie',
	'2023',
)

-- Inserir Registros na Tabela
create table aluno 
(
	rm 






)
insert aluno 
(	
	rm,				
	nome,
	dataNasc, 
	altura, 
	cep, 
	numResid, 
	telefone
)
values
(
	'87496',
	'Nicollas Cardoso Cavalcante Correia',
	'08/02/2007',
	'1.87',
	'06394020',
	'235',
	'11 91477-3218'
)

--Consultar os Registros da Tabela
select * from aluno

--Apagar os Registros da Tabela
delete from aluno

-- Destruir uma Tabela
drop table aluno

-- Destruir um Banco de Dados
drop database bdINF2HM