USE CLINICA_VETERINARIA;
GO

INSERT INTO EMPRESA(nomeEmpresa, endereco)
VALUES('MARABRAZ', 'RUA ALFREDO'), ('CASAS BAHIA', 'RUA DO CHILE'),
('PONTO FRIO', 'RUA MARQUES'), ('LOJÃO DO BRÁS', 'RUA ALAMEDA'),
('CLINICA JARDIM', 'RUA ALBERTO'), ('PETZ', 'RUA JARDIM'),
('LOJA DE RAÇÕES', 'RUA JUSCELINO'), ('VENDA DO ZÉ', 'RUA ADOLFO')
GO

INSERT INTO TIPO_PET(nomeTipo)
VALUES ('Cachorro'),('Peixe'),
('Papagaio'), ('Coelho'),
('Girafa')
GO

INSERT INTO DONO(nomeDono, telefone)
VALUES ('Thiago', '978367467'), ('Roberta', '936746247'),
('Batista', '938748738'), ('Marco', '936383283'),
('Kayke', '9748467387')
GO

INSERT INTO RACA(nomeRaca, idTipoPet)
VALUES ('YORKSHIRE', 1), ('PERSA', 2),
('PAPAGAIO', 3), ('RAGDOLL', 2),
('CHOW CHOW', 1)
GO

INSERT INTO PET(nomePet, dataNasc, idDono, idRaca)
VALUES ('Corinthians', '2015-03-12', 3, 3),
('Patinho', '2017-06-25', 1, 2),
('Fofo','2012-09-01', 5, 5),
('Floco', '2019-12-17', 4, 4),
('Ygor', '2020-09-08', 2, 1)
GO

INSERT INTO VETERINARIO(nomeVeterinario, idEmpresa)
VALUES('Thiago', 5), ('Matheus', 3),
('Sarah', 8), ('Jorje', 4),
('Kayke', 6), ('LUCAS', 7),
('SAULO', 2), ('Gabriel', 1)
GO

INSERT INTO ATENDIMENTO(idPet, idVeterinario, dataAtend, horario)
VALUES(3, 2, '2021-09-01', '11:14'), (4, 4, '2021-08-25', '11:26'),
(2, 2, '2021-09-01', '11:14'), (5, 4, '2021-08-25', '11:26'),
(1, 6, '2021-09-01', '11:14'), (5, 1, '2021-08-25', '11:26'),
(2, 2, '2021-09-01', '11:14'), (4, 4, '2021-08-25', '11:26')
GO