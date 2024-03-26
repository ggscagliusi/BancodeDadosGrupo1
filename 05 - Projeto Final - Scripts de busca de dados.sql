SELECT 
cli.nome, 
cli.sobrenome,
cli.email,
e.tipo_logradouro,
e.nome_logradouro,
e.numero,
e.complemento,
e.bairro,
e.cidade,
e.estado,
e.cep,
tel.ddd,
STRING_AGG(tel.numero_telefone || ' ', ' --- '  )

FROM 

Clientes cli 
JOIN Enderecos e ON cli.id_cliente = e.id_cliente
JOIN Telefones tel  ON cli.id_cliente = tel.id_cliente
WHERE cli.id_cliente = 4

GROUP BY cli.nome, cli.sobrenome, cli.email, e.tipo_logradouro, e.nome_logradouro, e.numero, e.complemento, e.bairro,
e.cidade, e.estado, e.cep, tel.ddd 

------------------------------------------------------------------------------------------------------------------------

SELECT 

e.estado,
COUNT(e.estado)

FROM 

Clientes cli
JOIN Enderecos e ON cli.id_cliente = e.id_cliente

GROUP BY e.estado
ORDER BY COUNT(e.estado) DESC

-------------------------------------------------------------------------------------------------------------------------
SELECT 

cat.nome,
prod.nome,
prod.preco_unitario

FROM

Produtos prod
JOIN Categorias cat ON cat.id_categoria = prod.id_categoria

WHERE preco_unitario < 50.0
ORDER BY preco_unitario ASC

-------------------------------------------------------------------------------------------------------------------------

SELECT 

prod.nome,
est.qtde_estoque,
est.data_atualizacao as ultima_contagem

FROM

Produtos prod
JOIN Estoques est ON prod.id_produto = est.id_produto

--------------------------------------------------------------------------------------------------------------------------

SELECT

nf.id_nota_fiscal,
ped.data_pedido,
cli.cpf,
cli.nome,
cli.sobrenome,
item.quantidade,
prod.nome,
prod.preco_unitario,
(item.quantidade * prod.preco_unitario) as subtotal,
e.tipo_logradouro,
e.nome_logradouro,
e.numero,
e.complemento,
e.bairro,
e.cidade,
e.estado,
e.cep

FROM

NotaFiscal nf
JOIN Pedido ped ON ped.id_pedido = nf.id_pedido
JOIN Clientes cli ON cli.id_cliente = ped.id_cliente
JOIN Pedido_item item ON item.id_pedido = ped.id_pedido
JOIN Produtos prod ON prod.id_produto = item.id_produto
JOIN Enderecos e ON e.id_cliente = cli.id_cliente

WHERE id_nota_fiscal = 5





