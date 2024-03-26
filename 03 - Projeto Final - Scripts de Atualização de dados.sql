Select * from produtos

INSERT INTO Produtos(nome, descricao, data_fabricacao, preco_unitario, id_categoria, id_funcionario) -- alvo do Update
VALUES
(
	'Fluído de freio Master 500ml',
	'Fluido de freio de alto desempenho',
	'2024-01-25',
	'69.99',
	4,
	5
);

UPDATE Produtos SET preco_unitario = preco_unitario * 1.25 		-- Comando de Update aumentando o preço  
WHERE id_produto = 6;											-- do produto de id_produto nº 6 em 25%

UPDATE Produtos SET preco_unitario = preco_unitario * 0.75 		-- Comando de Update diminuindo o preço  
WHERE id_produto = 6;											-- do produto de id_produto nº 6 em 25%

UPDATE Produtos SET preco_unitario = 70.00				 		-- Comando de Update ajustando o preço  
WHERE id_produto = 6;											-- do produto de id_produto nº 6 para 70.00
																		





