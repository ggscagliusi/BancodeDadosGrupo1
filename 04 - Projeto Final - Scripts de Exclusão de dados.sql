INSERT INTO Clientes(cpf, nome, sobrenome, login_usuario, senha, email, data_nascimento) -- alvo da exclusão
VALUES
(
	12345678936,
	'Marina Paes',
	'de Souza Franco',
	'mariFranco',
	'999555',
	'marisfranco@mail.com',
	'1991-09-11'
);

Select * from clientes

DELETE FROM Clientes WHERE id_cliente = 6; -- comando da exclusão