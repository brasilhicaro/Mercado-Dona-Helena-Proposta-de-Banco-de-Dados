-- Consultas com where

-- Consulta produtos que usam mililitro
select * from produto where unidade_medida = 'mililitro';

-- Consulta os clientes com débitos acima de R$ 100,00
select nome, debitos from cliente where debitos > 100;

-- Consulta funcionários que são repositores
select nome, sobrenome from funcionario where tipo ILIKE 'repositor';


-- Consultas com subconsulta

-- Informa a média de débitos
select
    debito_medio
from (
        select avg(debitos) as debito_medio
        from cliente)
    as debitos;

-- Informa o preço médio das bebidas
select
    preco_medio
from (
    select avg(preco) as preco_medio
    from produto
    where tipo = 'bebida'
     ) as preco_bebida;

-- Informa o valor médio das compras
select
    valor_total_medio
from (
    select avg(total) as valor_total_medio
    from compra
    ) as compra_total;

-- Consultas com junções

-- Informa dados dos funcionários
select nome, sobrenome, bairro, ddd, telefone
from funcionario f join funcionario_endereco fe on f.id_end = fe.id join funcionario_telefone ft on f.id = ft.id_funcionario;

-- Informa dados dos clientes
select nome, sobrenome, bairro, ddd, telefone
from cliente c join cliente_endereco ce on ce.id = c.id_end join cliente_telefone ct on c.id = ct.id_cliente;

-- Informa nome, tipo e preço de produtos que foram comprados
select nome, tipo, preco
from produto join compra_detalhamento cd on produto.id = cd.produto_id;

-- Mostra dados de funcionários e clientes que participaram de compras com valor total acima de R$ 10,00
select
    f.nome as nome_funcionario,
    f.sobrenome as sobrenome_funcionario,
    f.tipo as tipo_funcionario,
    c.nome as nome_cliente,
    c.sobrenome as sobrenome_cliente,
    c.debitos as debito_cliente,
    cmp.total
from atendimento a join cliente c on c.id = a.cliente_id
                   join funcionario f on f.id = a.funcionario_id
                   join compra cmp on a.id = cmp.id_atendimento
where cmp.total > 10;