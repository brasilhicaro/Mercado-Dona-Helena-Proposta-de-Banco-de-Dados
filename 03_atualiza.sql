-- Corrige o tipo errado de unidade de medida para o produto Vodka
update produto set unidade_medida = 'mililitro' where nome = 'Vodka';

update compra set total = consulta.total from (
    select
            cd.quantidade * p.preco as total,
            cd.produto_id,
            cd.quantidade,
            p.preco,
            cd.compra_id
    from compra_detalhamento cd join compra cmp on cd.compra_id = cmp.id
    join produto p on cd.produto_id = p.id) as consulta
where compra.id = consulta.compra_id;
