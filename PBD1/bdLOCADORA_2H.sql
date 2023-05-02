create database bdLOCADORA_2H

use bdLOCADORA_2H

create table Genero
(
	id			int				identity,
	nomeGenero	varchar(50)		not null,
	primary key (id)
)

create table Forma_Pagamento
(	
	id				int				identity,
	nomeFormaPgto	varchar(50)		not null,
	primary key (id)	
)

create table Idioma
(
	id			int				identity,
	nomeIdioma	varchar(50)		not null,
	primary key (id)
)

create table Categoria
(
	id				int				identity,
	nomeCategoria	varchar(50)		not null,
	preco			decimal(8,2)	not null,
	primary key (id)
)

create table Cargo
(
	id				int				identity,
	nomeCargo	varchar(50)		not null,
	primary key (id)
)

create table Cliente
(
	id				int					identity,
	nome			varchar(100)		not null,
	cpf				char(11)			not null,
	rg				varchar(12)			not null,
	dataNasc		Date				not null,
	telefone		varchar(20)			not null,
	email			varchar(100)		null,
	logradouro		varchar(100)		not null,
	numResid		varchar(10)			not null,
	cep				char(8)				not null,
	bairro			varchar(50)			not null,
	cidade			varchar(50)			not null,
	UF				char(2)				not null,
	complemento		varchar(50)			null,
	primary key (id)
)

create table Funcionário
(
	id				int					identity,
	nome			varchar(100)		not null,
	cpf				char(11)			not null,
	rg				varchar(12)			not null,
	dataNasc		Date				not null,
	telefone		varchar(20)			not null,
	email			varchar(100)		null,
	logradouro		varchar(100)		not null,
	numResid		varchar(10)			not null,
	cep				char(8)				not null,
	bairro			varchar(50)			not null,
	cidade			varchar(50)			not null,
	UF				char(2)				not null,
	complemento		varchar(50)			null,
	cargo_id		int					not null,
	primary key (id),
	foreign key (cargo_id) references Cargo (id)
)

create table Contato_Cliente
(
	id				int				identity,
	contato			varchar(50)		not null,
	tipoContato		varchar(50)		not null,
	cliente_id		int				not null,
	primary key (id),
	foreign key (cliente_id) references Cliente (id)
)

create table Filme
(
	id				int					identity,
	titulo			varchar(100)		not null,
	sinopse			varchar(500)		not null,
	duracao			int					not null,
	ano				char(4)				not null,
	genero_id		int					not null,
	idioma_id		int					not null,
	categoria_id		int					not null,
	primary key (id),
	foreign key (genero_id) references Genero (id),
	foreign key (idioma_id) references Idioma (id),
	foreign key (categoria_id) references Categoria (id)
)