-- Cria dados na tabela funcionario_endereco

insert into funcionario_endereco(cep, bairro, logradouro, numero, complemento)
            values ('58540-000', 'Centro', 'Avenida Primeiro de Abril', '596A', 'Segundo andar'),
                   ('58540-000', 'Guariroba', 'Travessa do Alagado', '51', 'Apto 305');
insert into funcionario_endereco(cep, bairro, logradouro, numero) values('58540-000', 'Caixa d''Água', 'Beco do Matadouro', '03');
insert into funcionario_endereco(cep, bairro, logradouro, numero) values('58540-000', 'Carro Quebrado', 'Rua do Açude', '33');

-- Cria dados na tabela funcionario

insert into funcionario(nome, sobrenome, tipo, id_end)
            values ('Raimundo', 'Nonato', 'Caixa', 1),
                   ('Maria', 'Quitéria', 'Gerente', 2),
                   ('Clementina', 'de Jesus', 'Entregadora', 3),
                   ('José Augusto', 'Conceição', 'Repositor', 4),
                   ('Francisco', 'Fernandes', 'Repositor', 3);

-- Cria dados na tabela funcionario_telefone

insert into funcionario_telefone(id_funcionario, tipo, ddd, telefone)
            VALUES (1, 'celular', 81, 987564352),
                   (1, 'fixo', 81, 33456789),
                   (2, 'celular', 83, 908760932),
                   (3, 'celular', 84, 765483214),
                   (4, 'celular', 82, 4762),
                   (5, 'fixo', 86, 1233124);

-- Cria dados na tabela cliente_endereco

insert into cliente_endereco(cep, bairro, logradouro, numero, complemento)
            VALUES ('67890-987', 'Liberdade', 'Rua da Paz, Bloco B', '45', 'Apto 303'),
                   ('16524-456', 'Anjo da Guarda', 'Travessa do Tombo', '36', 'Térreo'),
                   ('12325-367', 'Monte Castelo', 'Avenida Getúlio Vargas', '534', 'Apto 101'),
                   ('12456-980', 'Praia Grande', 'Rua Portugal', '16', 'Apto 202'),
                   ('89756-431', 'Madredeus', 'Avenida das Cajazeiras', '35-B', 'Segundo andar');

insert into cliente_endereco(cep, bairro, logradouro, numero)
            VALUES ('89657-098', 'Tambaú', 'Rua da Feira', '45'),
                   ('58540-000', 'Frei Damião', 'Largo do Ingá', '78'),
                   ('12567-348', 'Centro', 'Avenida Rio Branco', '56'),
                   ('985234-761', 'Maiobão', 'Avenida 12', '204'),
                   ('985234-761', 'Maiobão', 'Avenida 11', '205');

-- Cria dados na tabela cliente

insert into cliente(nome, sobrenome, debitos, id_end)
              VALUES ('João', 'Sabiá', 100.65, 1),
                     ('Maria', 'Silva', 200.30, 2),
                     ('Mario', 'Ferreira', 56.65, 3),
                     ('José', 'Bezerra', 0.00, 4),
                     ('Fernanda', 'Monteiro', 88.20, 5),
                     ('Jorge', 'Jesus', 500.65, 6),
                     ('George', 'Soros', 5000.65, 7),
                     ('Linus', 'Torvalds', 0.00, 8),
                     ('David', 'Hansson', 100.00, 9),
                     ('James', 'Goslin', 100.00, 9);

-- Cria dados na tabela cliente_telefone
insert into cliente_telefone(id_cliente, tipo, ddd, telefone)
            VALUES (1, 'celular', 81, 987584352),
                   (1, 'fixo', 81, 33476789),
                   (2, 'celular', 83, 90800932),
                   (3, 'celular', 84, 765489214),
                   (4, 'celular', 82, 4782),
                   (5, 'fixo', 86, 1232824),
                   (6, 'fixo', 11, 40028922),
                   (7, 'fixo', 84, 38412588),
                   (8, 'celular', 82, 4586941),
                   (9, 'celular', 86, 123282124),
                   (10, 'fixo', 11, 151545689);

-- Cria dados na tabela produto

insert into produto(nome, preco, tipo, quantidade_unitaria, unidade_medida)
            values('Vodka', 25.00, 'bebida', 750, 'litro'),
                  ('Banana', 0.50, 'fruta', 1, 'unidade'),
                  ('Coentro', 4.00, 'verdura', 1, 'maço'),
                  ('Cebola', 7.00, 'legume', 1, 'quilograma'),
                  ('Sabonete', 2.00, 'higiene', 1, 'unidade'),
                  ('Limpador Multiuso', 3.55, 'limpeza', 500, 'mililitro'),
                  ('Pão Frances', 0.75, 'padaria', 1, 'unidade'),
                  ('Lamen', 1.55, 'outros', 1, 'pacote'),
                  ('Whisky', 50.00, 'bebida', 1000, 'mililitro'),
                  ('Tomate', 0.40, 'fruta', 1, 'unidade'),
                  ('Salsa', 3.00, 'verdura', 1, 'maço'),
                  ('Mandioca', 5.00, 'legume', 1, 'quilograma'),
                  ('Shampoo', 3.00, 'higiene', 1, 'unidade'),
                  ('Água Sanitária', 5.60, 'limpeza', 500, 'mililitro'),
                  ('Biscoito', 1.50, 'padaria', 1, 'pacote'),
                  ('Trigo', 6.00, 'outros', 1, 'quilograma');

insert into atendimento(cliente_id, funcionario_id)
            VALUES (1, 1),
                   (2, 1),
                   (3, 5),
                   (4, 2),
                   (5, 3),
                   (6, 4),
                   (7, 1),
                   (8, 2),
                   (9, 5),
                   (10, 4),
                   (6, 2);

insert into compra(id_atendimento, total)
            values (1, 0),
                   (3, 0),
                   (4, 0),
                   (7, 0),
                   (10, 0);

insert into compra_detalhamento(compra_id, produto_id, quantidade)
            VALUES (1, 1, 4),
                   (2, 3, 5),
                   (3, 8, 3),
                   (4, 16, 1),
                   (5, 4, 9);

