USE Karavan_4253


ALTER TABLE		[dbo].[Kdokument]  
ADD  CONSTRAINT [jazik_id_jazik] FOREIGN KEY(id_jazik)
REFERENCES		[dbo].[Jazik] (id_jazik)

ALTER TABLE		[dbo].[Email_Grupa]  
ADD  CONSTRAINT [jazik_id_jazik] FOREIGN KEY(id_jazik)
REFERENCES		[dbo].[Jazik] (id_jazik)


ALTER TABLE		[dbo].[Email_Poraka]  
ADD  CONSTRAINT [Grupa_Id_Grupa] FOREIGN KEY(id_grupa)
REFERENCES		[dbo].[Email_Grupa] (id_grupa)


ALTER TABLE		[dbo].[Mailing]  
ADD  CONSTRAINT [Email_Id_Posetitel] FOREIGN KEY(id_posetitel)
REFERENCES		[dbo].[Email] (id_posetitel)

ALTER TABLE		[dbo].[Mailing]  
ADD  CONSTRAINT [Email_Id_Grupa] FOREIGN KEY(id_grupa)
REFERENCES		[dbo].[Email_Grupa] (id_grupa)


ALTER TABLE		[dbo].[Galerija_Opis]  
ADD  CONSTRAINT [jazik_id_jazik] FOREIGN KEY(id_jazik)
REFERENCES		[dbo].[Jazik] (id_jazik)

ALTER TABLE		[dbo].[Galerija_Slika]  
ADD  CONSTRAINT [gal_id_galerijas] FOREIGN KEY(id_galerija)
REFERENCES		[dbo].[Galerija] (id_galerija)