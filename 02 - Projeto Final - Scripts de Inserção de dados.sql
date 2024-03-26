INSERT INTO Clientes(cpf, nome, sobrenome, login_usuario, senha, email, data_nascimento) 
VALUES
(12198704714, 'Guido Giuseppe', 'Scagliusi', 'ggscagliusi', '123456', 'ggscagliusi@mail.com', '1987-05-11'),
(11111111111, 'Fernanda Almeida', 'De Souza Lima', 'nandalima145', '1234567', 'nandalima@mail.com', '1987-06-11'),
(22222222222, 'Honório Franco', 'Moreno Veiga', 'honorveiga', '0235689', 'veigahonorio@mail.com', '1990-05-11'),
(33333333333, 'Mariana', 'Veiga de Souza', 'marisouza', '987654', 'marisouza@mail.com', '1987-09-21'),
(44444444444, 'Lorena', 'de Orleans e Bragança', 'lorebraganca', '5550853', 'Lorenabrag@mail.com', '1989-11-21');

INSERT INTO Telefones(id_cliente, ddd, numero_telefone)
VALUES
(1, '24', '992643721'),
(2, '21', '988653202'),
(3, '11', '987532145'),
(4, '13', '988605563'),
(5, '32', '987635412'),
(1, '24', '22441546'),
(2, '21', '22427202'),
(3, '11', '36522030'),
(4, '13', '36998532'),
(5, '32', '33650412');

INSERT INTO Enderecos(id_cliente, tipo_logradouro, nome_logradouro, numero, complemento, bairro, cidade, estado, cep)
VALUES 
(1, 'Rua', 'Paulo Barbosa', 147, 'apto 502', 'Centro', 'Petrópolis', 'RJ', '25620100'),
(3, 'Rua', 'das Camélias', 2562, 'apto 102', 'Mooca', 'Sao Paulo', 'SP', '25630200'),
(2, 'Avenida', 'das Américas', 3000, 'Casa 99' , 'Barra da Tijuca' , 'Rio de Janeiro', 'RJ', '30125478'),
(4, 'Avenida', 'Benjamin Constant', 965, 'sala 205', 'Centro', 'Santos', 'SP', '25620050'),
(5, 'Rua', 'Dr Darnstadt', 352, 'sala 305', 'Centro', 'Juiz de Fora', 'MG', '25698741');

INSERT INTO Categorias(nome, descricao)
VALUES
('Higiene Pessoal', 'Produtos de Higiene Pessoal'),
('Limpeza', 'Produtos de Limpeza'),
('Farmácia', 'Remédios e relacionados'),
('Automotivo', 'Produtos relacionados a carros'),
('Bebidas alcólicas', 'cervejas, vinhos, etc.');

INSERT INTO Funcionarios(nome, cpf)
VALUES
('Fabiola', 55555555555),
('Caroline', 66666666666),
('Clara', 77777777777),
('Eduardo', 88888888888),
('Marcelo', 99999999999);

INSERT INTO Produtos(nome, descricao, data_fabricacao, preco_unitario, id_categoria, id_funcionario) 
VALUES
('Shampoo anticaspa 300ml', 'shampoo anticaspa', '2023-11-20', '22.50', 1, 1),
('Desinfetante de banheiro 500ml', 'desinfetante com cloro ativo', '2023-05-30', '25.30', 2, 2),
('Água Oxigenada 10 volume 100ml', 'Água Oxigenada', '2022-05-20', '6.50', 3, 3),
('Lubrificante de Motor 400ml', 'Óleo de Motor', '2023-10-11', '45.50', 4, 4),
('Vinho Mazela 1 litro', 'Vinho Carbenet Sauvignon', '2021-10-12', '35.99', 5, 5);

INSERT INTO Estoques(id_produto, qtde_estoque, id_funcionario)
VALUES
(1, 25, 1),
(2, 44, 2),
(3, 98, 3),
(4, 25, 4),
(5, 150, 5);

INSERT INTO Pedido(id_cliente)
VALUES
(1),
(2),
(3),
(4),
(5);

INSERT INTO Pedido_item(id_pedido, id_produto, quantidade)
VALUES
(1, 1, 2),
(1, 2, 3),
(2, 1, 2),
(2, 2, 4),
(3, 2, 4),
(3, 2, 5),
(3, 2, 6),
(4, 3, 1),
(4, 4, 2),
(5, 3, 1),
(5, 4, 3),
(5, 5, 3);

INSERT INTO NotaFiscal(id_pedido) 
VALUES
(1),
(2),
(3),
(4),
(5);














