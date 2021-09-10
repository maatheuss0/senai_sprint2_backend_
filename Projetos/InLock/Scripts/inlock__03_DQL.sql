USE INLOCK_GAMES_MAN;
GO

--Listar todos os usuários
SELECT * FROM Usuario


--Listar todos os estúdios
SELECT * FROM Estudios


--Listar todos os jogos
SELECT * FROM Jogos

--Listar todos os jogos e seus respectivos estúdios
SELECT nomeJogos, nomeEstudio FROM Jogos
INNER JOIN Estudios a
ON jogos.idEstudio = a.idEstudio


--Buscar e trazer na lista todos os estúdios com os respectivos jogos
SELECT nomeEstudio, nomeJogos FROM Estudios
LEFT JOIN Jogos j
ON Estudios.idEstudio = j.idEstudio


--Buscar um usuário por e-mail e senha (login)
SELECT nomeUsuario, emailUsuario, senhaUsuario FROM Usuario
WHERE emailUsuario = 'admin@admin.com' AND senhaUsuario = 'admin'

SELECT nomeUsuario, emailUsuario, senhaUsuario FROM Usuario
WHERE emailUsuario = 'cliente@cliente.com' AND senhaUsuario = 'cliente'

--Buscar um jogo por idJogo
SELECT idJogo, nomeJogos FROM Jogos
WHERE idJogo = '1'

SELECT idJogo, nomeJogos FROM Jogos
WHERE idJogo = '2'


--Buscar um estúdio por idEstudio
SELECT * FROM Estudios
WHERE idEstudio = '1'

SELECT * FROM Estudios
WHERE idEstudio = '2'

SELECT * FROM Estudios
WHERE idEstudio = '3'
