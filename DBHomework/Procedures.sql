
--PROCEDURE A

CREATE PROCEDURE EXA1
@Jazik as INT
AS
SELECT DISTINCT G.naslov, G.opis , G.gal_id_galerija
FROM Galerija_Opis AS G
	INNER JOIN 
	Jazik AS J
			ON G.jazik_id_jazikg = J.jazik
WHERE J.id_jazik = @Jazik
GO

EXEC EXA1 @Jazik = 1


-------------------------------
--PROCEDURE B
PROCEDURE B
CREATE PROCEDURE EXB1
@article as nvarchar(50)
AS
SELECT k.jazik_id_jazikn, G.ime
FROM Kadministrator AS G
		inner join
		Knovost AS K
		ON K.adm_id_adminn = G.id_admin
					
WHERE K.naslov = @article
GO

EXEC EXB1 @article = 'Wakanda';

--------------------------------------------------
--PROCEDURE C
CREATE PROCEDURE EXC1
@affiliation as nvarchar(50)
AS
SELECT E.ime, COUNT(M.Email_Id_Grupa) as GroupNum
FROM Email AS E
	INNER JOIN
	Mailing AS M
	on E.id_posetitel = M.Email_Id_Posetitel
GROUP BY ime
ORDER BY GroupNum
GO
EXEC EXC1 @affiliation = 'John';

-----------------------------------------------
--PROCEDURE D
CREATE PROCEDURE EXD1
AS
SELECT e.naslov, e.tekst
FROM Email_Poraka AS E
	INNER JOIN
	Email_Grupa AS G
		on E.Grupa_Id_Grupa = g.id_grupa
WHERE G.aktivna = 1
GO
EXEC EXD1 


