-- Apaga todas as tabelas e tipos no banco de dados

drop type if exists tipo_telefone cascade;
drop type if exists tipo_produto cascade;
drop type if exists tipo_medida cascade;

drop table if exists funcionario_endereco cascade;
drop table if exists funcionario cascade;
drop table if exists funcionario_telefone cascade;
drop table if exists cliente_endereco cascade;
drop table if exists cliente cascade;
drop table if exists cliente_telefone cascade;
drop table if exists produto cascade;
drop table if exists atendimento cascade;
drop table if exists compra cascade;
drop table if exists compra_detalhamento cascade;
