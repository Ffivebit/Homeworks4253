USE Karavan_4253

CREATE TABLE dbo.Kadministrator
(
 id_admin numeric(18,0) IDENTITY(1,1) NOT NULL PRIMARY KEY(id_admin),
 username [nvarchar](50) NULL,
 password [nvarchar](50) NULL,
 ime [nvarchar](50) NULL,
 telefon [nvarchar](50) NULL,
)

CREATE TABLE dbo.Jazik
(
id_jazik numeric(18,0) IDENTITY(1,1) NOT NULL PRIMARY KEY(id_jazik),
jazik [nvarchar] (50) NULL,

)

CREATE TABLE dbo.Knovost
(
id_novost numeric(18,0) IDENTITY(1,1) NOT NULL PRIMARY KEY(id_novost),
adm_id_adminn numeric(18,0) NULL,
jazik_id_jazikn numeric(18,0) NULL,
naslov [nvarchar] (50) NULL,
opis [nvarchar] (1500) NULL,
datum_od [datetime] NULL,
datum_do [datetime] NULL,
)


CREATE TABLE dbo.Kdokument
(
id_dokument numeric(18,0) IDENTITY(1,1) NOT NULL PRIMARY KEY (id_dokument),
naslov [nvarchar] (50) NULL,
jazik_id_jazikd numeric(18,0) NULL,
dokument [nvarchar] (50) NULL,
prikaz numeric(18,0) NULL,
)





CREATE TABLE dbo.Email
(
id_posetitel numeric(18,0) IDENTITY(1,1) NOT NULL PRIMARY KEY (id_posetitel),
ime [nvarchar] (50) NULL,
mail [nvarchar] (50) NULL,
)

CREATE TABLE dbo.Email_Grupa
(
id_grupa numeric(18,0) IDENTITY(1,1) NOT NULL PRIMARY KEY (id_grupa),
jazik_id_jazikm numeric(18,0) NULL,
naziv [nvarchar] (50) NULL,
aktivna numeric(18,0) NULL,
)



CREATE TABLE dbo.Email_Poraka
(
id_poraka numeric(18,0) IDENTITY(1,1) NOT NULL PRIMARY KEY (id_poraka),
Grupa_Id_Grupa numeric(18,0) NULL,
datum [datetime] NULL,
naslov [nvarchar] (50) NULL,
tekst [nvarchar] (500) NULL,
)



CREATE TABLE dbo.Mailing
(
Email_Id_Posetitel numeric(18,0) NULL,
Email_Id_Grupa numeric(18,0) NULL,
)

CREATE TABLE dbo.Galerija
(
id_galerija numeric(18,0) IDENTITY(1,1) NOT NULL PRIMARY KEY (id_galerija),
preview numeric(18,0) NULL,
)

CREATE TABLE dbo.Galerija_Opis
(
gal_id_galerija numeric(18,0) NULL,
jazik_id_jazikg numeric(18,0) NULL,
naslov [nvarchar] (50) NULL,
opis [nvarchar] (500) NULL,
)




CREATE TABLE dbo.Galerija_Slika
(
id_slika numeric(18,0) IDENTITY(1,1) NOT NULL PRIMARY KEY (id_slika),
gal_id_galerijas numeric(18,0) NULL,
opisslika [nvarchar] (50) NULL,
slika [nvarchar] (50) NULL,
opisslikaeng [nvarchar] (300) NULL,
)

