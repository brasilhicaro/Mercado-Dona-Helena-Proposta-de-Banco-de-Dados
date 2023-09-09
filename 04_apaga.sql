-- Apaga o registro do produto Salsa ao mesmo tempo que exibe seus dados no terminal
delete from produto where nome = 'Salsa' returning *;