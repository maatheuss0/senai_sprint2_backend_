USE CATALAGO;

INSERT INTO GENERO (nomeGenero)
VALUES ('ROMANCE')


INSERT INTO FILME (idGenero,tituloFilme)
VALUES  (1,'Pantera Negra'), (1,'Vingadores'),
     	(2,'Freira'), (2,'Invocação do mal'),
		(3,'Rio'), (3,'Pica pau'),
     	(4,'365 Dias'), (4,'50 Tons de cinza')


-- Alterar
--UPDATE FILME
--SET tituloFilme = 'Gente grande'
--WHERE idFilme = 10

SELECT * FROM GENERO
SELECT * FROM FILME

-- Deletar 
--DELE FROM GENERO
--WHERE idGenero = 2;
--GO