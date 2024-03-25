CREATE TABLE Clientes
(
	id_cliente SERIAL PRIMARY KEY,
	cpf bigint NOT NULL UNIQUE,
	nome varchar(60) NOT NULL,
	sobrenome varchar(80) NOT NULL,
	login_usuario varchar(20) NOT NULL UNIQUE,
	senha varchar(10) NOT NULL,
	email varchar(30) NOT NULL UNIQUE,
	data_nascimento DATE NOT NULL
);

CREATE TABLE Enderecos
(
	id_cliente int PRIMARY KEY REFERENCES Clientes (id_cliente),
	tipo_logradouro varchar(10) NOT NULL,
	nome_logradouro varchar(40) NOT NULL,
	numero varchar(5) NOT NULL,
	complemento varchar(60) NOT NULL,
	bairro varchar(20) NOT NULL,
	cidade varchar(60) NOT NULL,
	estado varchar(2) NOT NULL,
	cep varchar(8) NOT NULL
);

CREATE TABLE Telefones
(
	id_telefone serial PRIMARY KEY,
	id_cliente int NOT NULL REFERENCES	Clientes (id_cliente),
	ddd varchar(2) NOT NULL,
	numero_telefone varchar(12) NOT NULL
);


CREATE TABLE Funcionarios 
(
	id_funcionario SERIAL PRIMARY KEY,
 	nome varchar(20) NOT NULL,
 	cpf bigint NOT NULL UNIQUE
);

CREATE TABLE Categorias
(
	id_categoria SERIAL PRIMARY KEY,
	nome varchar(20) NOT NULL,
	descricao varchar(30) NOT NULL
);

CREATE TABLE Produtos
(
	id_produto SERIAL NOT NULL PRIMARY KEY,
	nome varchar(30) NOT NULL,
	descricao varchar(60) NOT NULL,
	data_fabricacao DATE NOT NULL,
	preco_unitario decimal NOT NULL,
	data_cadastro timestamp  DEFAULT CURRENT_TIMESTAMP,
	id_categoria int NOT NULL REFERENCES Categorias (id_categoria),
	id_funcionario int NOT NULL REFERENCES Funcionarios (id_funcionario)
);

CREATE TABLE Estoques
(
	id_produto int PRIMARY KEY REFERENCES Produtos (id_produto),
	qtde_estoque int DEFAULT 0,
	data_atualizacao timestamp DEFAULT CURRENT_TIMESTAMP,
	id_funcionario int NOT NULL REFERENCES Funcionarios (id_funcionario)
);

CREATE TABLE Pedido
(
	id_pedido SERIAL NOT NULL PRIMARY KEY,
	id_cliente int NOT NULL,
	data_pedido timestamp DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Pedido_item
(	id_pedido_item serial PRIMARY KEY,
	id_pedido int NOT NULL REFERENCES Pedido (id_pedido),
	id_produto int NOT NULL REFERENCES Produtos (id_produto),
	quantidade int NOT NULL 
);

CREATE TABLE NotaFiscal (
	id_nota_fiscal SERIAL PRIMARY KEY,
	id_pedido int NOT NULL
);


















