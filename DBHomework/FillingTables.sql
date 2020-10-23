use Karavan_4253



INSERT INTO dbo.Kadministrator( username, password, ime, telefon)
VALUES  
('kenny', 'kk', 'kenny','072219952' ),
('wenny', 'ww', 'wenny','072219953' ),
('lenny', 'll', 'lenny','072219954' ),
('salah', 'ss', 'salah','072219955' ),
('farah', 'ff', 'farah','072219956' ),
('ahmed', 'aaa', 'ahmed','072219957' ),
('aziz', 'aa', 'aziz','072219958' ),
('muhammed', 'mm', 'muhammed','072219959' ),
('jambo', 'jj', 'jambo','072219960' )



INSERT INTO dbo.Knovost(adm_id_adminn,jazik_id_jazikn, naslov, opis, datum_od, datum_do)
VALUES
('1','1','Wakanda', 'Lloyd', '2020-10-18', '2020-10-19'),
('2','2','MSI', 'Frenny', '2020-10-16', '2020-10-22'),
('3','3','Stole', 'Dole', '2020-10-12', '2020-10-28'),
('4','4','The Wolf ', 'Fenny', '2020-10-11', '2020-10-30'),
('5','5','Avengers', 'Thanos', '2020-10-22', '2020-10-31'),
('6','6','Iphone', 'Bill', '2020-10-23', '2020-10-27'),
('7','7','Samsung', 'Penny', '2020-10-5', '2020-10-13'),
('8','8','AMD', 'CPU', '2020-10-2', '2020-10-16'),
('9','9','BENQ', 'Screen', '2020-10-7', '2020-10-11'),
('10','10','SteelSeries', 'Mat', '2020-10-9', '2020-10-17')

INSERT INTO dbo.Jazik(jazik)
VALUES
('English'),
('Afrikaans'),
('Mandarin'),
('Dutch'),
('German'),
('Italian'),
('Arabic'),
('French'),
('Serbian'),
('Macedonian')

INSERT INTO dbo.Kdokument(naslov, jazik_id_jazikd, dokument, prikaz)
VALUES
('Passport', '1', 'FOREIGN', '1'),
('ID', '2', 'FOREIGN', '2'),
('BIRTH CERTIFICATE', '3', 'FOREIGN', '3'),
('ID', '4', 'DOMESTIC', '4'),
('ID', '5', 'DOMESTIC', '5'),
('PASSPORT', '6', 'DOMESTIC', '6'),
('BIRTH CERTIFICATE', '7', 'DOMESTIC', '7'),
('BIRTH CERTIFICATE', '8', 'DOMESTIC', '8'),
('ID', '9', 'FOREIGN', '9'),
('ID', '10', 'FOREIGN', '10')

insert into dbo.Email(ime, mail)
VALUES
('John', 'John@gmail.com'),
('Kenny', 'kenny@gmail.com'),
('Lenny', 'lenny@gmail.com'),
('Wayne', 'wayne@gmail.com'),
('Kobe', 'kobe@gmail.com'),
('Messi', 'messi@gmail.com'),
('Cristiano', 'cristiano@gmail.com'),
('Emma', 'emma@gmail.com'),
('Mark', 'mark@gmail.com'),
('Ahmed', 'ahmed@gmail.com')


insert into dbo.Email_Grupa(jazik_id_jazikm, naziv, aktivna)
VALUES
('1', 'PROFESSIONAL', '1'),
('2', 'PROFESSIONAL', '1'),
('3', 'PERSONAL', '0'),
('4', 'PERSONAL', '0'),
('5', 'PROFESSIONAL', '1'),
('6', 'PROFESSIONAL', '1'),
('7', 'PERSONAL', '0'),
('8', 'PROFESSIONAL', '1'),
('9', 'PROFESSIONAL', '1'),
('10', 'PERSONAL', '0')

insert into dbo.Email_Poraka(Grupa_Id_Grupa, datum,naslov,tekst)
VALUES
('2','10/18/2020','Work', 'Work at 9pm'),
('4','10/19/2020','Work', 'Work at 7pm'),
('5','10/20/2020','Workout', 'Workout at 2pm'),
('6','10/21/2020','Work', 'Workout at 6pm'),
('7','10/22/2020','Work', 'Work at 1pm'),
('8','10/23/2020','Work', 'Work at 5pm'),
('9','10/24/2020','Work', 'Workout at 7pm'),
('10','10/25/2020','Work', 'Work at 4pm'),
('11','10/26/2020','Work', 'Work at 7pm'),
('12','10/27/2020','Work', 'Workout at 1pm')

insert into dbo.Mailing(Email_Id_Posetitel, Email_Id_Grupa)
VALUES
('1','2'),
('2','3'),
('3','4'),
('4','5'),
('5','6'),
('6','7'),
('7','8'),
('8','9'),
('9','10'),
('10','11')

insert into dbo.Galerija(preview)
VALUES
('1'),
('2'),
('3'),
('4'),
('5'),
('6'),
('7'),
('8'),
('9'),
('10')

insert into dbo.Galerija_Opis(jazik_id_jazikg, naslov, opis)
VALUES
('1', 'REPAIR', 'Janitor'),
('2', 'CONSTRUCTION', 'Manager'),
('3', 'REPAIR', 'Plumer'),
('4', 'SERVICE', 'Manager'),
('5', 'CONSTRUCTION', 'Janitor'),
('6', 'REPAIR', 'Manager'),
('7', 'REPAIR', 'Company'),
('8', 'SERVICE', 'Plumer'),
('9', 'SERVICE', 'Monitor'),
('10', 'CONSTRUCTION', 'Manager')

insert into dbo.Galerija_Slika(gal_id_galerijas, opisslika, slika, opisslikaeng)
VALUES
('2', 'Tazen', 'photo:330', 'Sad' ),
('3', 'Srekjen', 'photo:420', 'Happy'),
('4', 'Nervozen', 'photo:445', 'Nervous'),
('5', 'Depresiven', 'photo:1', 'Depressed'),
('6', 'Mrzliv', 'photo:33', 'Lazy'),
('7', 'Glup', 'photo:22', 'Stupid'),
('8', 'Nervozen', 'photo:11', 'Grumpy'),
('9', 'Porazen', 'photo:17', 'Defeated'),
('10', 'Ljubomoren', 'photo:39', 'Jealous'),
('11', 'Napuknat', 'photo:99', 'Uptight')