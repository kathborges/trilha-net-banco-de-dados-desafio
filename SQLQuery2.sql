SELECT * FROM Atores

SELECT * FROM ElencoFilme

SELECT * FROM Filmes 

SELECT * FROM FilmesGenero

SELECT * FROM Generos

-- 1

SELECT Nome, Ano FROM Filmes 

-- 2

SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC

-- 3

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4

SELECT * FROM Filmes WHERE Ano = 1997

-- 5

SELECT * FROM Filmes WHERE Ano > 2000

-- 6

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

-- 7

ALTER TABLE Filmes ADD Quantidade INT
UPDATE Filmes SET Quantidade = 1
UPDATE Filmes SET Quantidade = 4 WHERE Ano = 1997
UPDATE Filmes SET Quantidade = 2 WHERE Ano = 1999
UPDATE Filmes SET Quantidade = 2 WHERE Ano = 2001
UPDATE Filmes SET Quantidade = 2 WHERE Ano = 1995
SELECT Ano, Quantidade FROM Filmes GROUP BY Ano, Quantidade ORDER BY Quantidade DESC

-- 8

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

-- 9

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

-- 10

SELECT f.Nome AS Filme, g.Genero AS Genero FROM Filmes f INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme INNER JOIN Generos g ON fg.IdGenero = g.Id;

-- 11

SELECT f.Nome AS Filme, g.Genero AS Genero FROM Filmes f INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme INNER JOIN Generos g ON fg.IdGenero = g.Id WHERE g.Genero = 'Mistério';

-- 12

SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes f INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme INNER JOIN Atores a ON ef.IdAtor = a.Id;
