USE UNIDAS;

INSERT INTO PESSOA (nomePessoa)
VALUES ('Rodrigo'), ('Thiago'), ('Bruno'), ('Matheus'), ('Saulo'), ('Lucas')

SELECT * FROM PESSOA

INSERT INTO TELEFONE (idPessoa, numeroTelefone)
VALUES (1,'1111'), (2,'22222'), (3,'33333'), (4,'44444'), (5,'55555'), (6,'66666')
GO

INSERT INTO EMAIL (idPessoa, end_email)
VALUES (1,'R.email@gmail.com'), (2,'T.email@gmail.com'), (3, 'B.email@gmail.com'), (4, 'M.email@gmail.com'), (5, 'S.email@gmail.com'), (6, 'L.email@gmail.com')	
GO

INSERT INTO CNH (idPessoa, descricao)
VALUES (1,'5665212'), (2,'365852'), (3,'4551698'), (4,'4841387'), (5,'3879437'), (6,'7589526')
GO

SELECT numeroTelefone FROM TELEFONE
SELECT end_email FROM EMAIL
SELECT descricao FROM CNH