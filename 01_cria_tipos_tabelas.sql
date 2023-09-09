-- Cria enums
create type tipo_telefone as enum('fixo', 'celular');

CREATE TYPE tipo_produto AS enum(
    'bebida',
    'fruta',
    'verdura',
    'legume',
    'higiene',
    'limpeza',
    'padaria',
    'outros'
);

CREATE TYPE tipo_medida AS enum(
    'mililitro',
    'litro',
    'grama',
    'quilograma',
    'unidade',
    'pacote',
    'maço'
);

-- Cria tabelas

create table if not exists funcionario_endereco(
    id serial primary key,
    cep text not null,
    bairro text not null,
    logradouro text not null,
    numero text not null,
    complemento text
);

create table if not exists funcionario(
    id serial primary key,
    nome text not null,
    sobrenome text not null,
    tipo text not null,
    id_end integer references funcionario_endereco(id)
);

create table if not exists funcionario_telefone(
    id serial primary key,
    id_funcionario integer references funcionario(id),
    tipo tipo_telefone not null,
    ddd integer not null,
    telefone integer not null
);

CREATE TABLE IF NOT EXISTS cliente_endereco(
    id serial primary key,
    cep text not null,
    bairro text not null,
    logradouro text not null,
    numero text not null,
    complemento text
);

CREATE TABLE IF NOT EXISTS cliente(
	id serial primary key,
	nome text not null,
    sobrenome text not null,
    debitos numeric(7, 2) NOT NULL,
    id_end integer references cliente_endereco (id)
);

CREATE TABLE IF NOT EXISTS cliente_telefone(
    id serial primary key,
    id_cliente integer references cliente(id),
    tipo tipo_telefone not null,
    ddd integer not null,
    telefone integer not null
);

CREATE TABLE IF NOT EXISTS produto(
	id serial PRIMARY KEY,
	nome text UNIQUE NOT NULL,
	preco numeric(6, 2) NOT NULL,
	tipo tipo_produto NOT NULL,
	quantidade_unitaria real not null,
	unidade_medida tipo_medida NOT NULL
);

CREATE TABLE if not exists atendimento(
    id serial unique,
    data_atendimento TIMESTAMP DEFAULT now(),
    cliente_id integer references cliente(id),
    funcionario_id integer references funcionario(id),
    PRIMARY KEY (data_atendimento, cliente_id, funcionario_id)
);

CREATE TABLE IF NOT EXISTS compra(
	id serial PRIMARY KEY,
	id_atendimento integer references atendimento(id),
	total numeric(7, 2) NOT NULL
);

create table if not exists compra_detalhamento(
    id serial unique,
    compra_id integer references compra(id),
    produto_id integer references produto(id),
    quantidade smallint not null,
    primary key (compra_id, produto_id)
);
