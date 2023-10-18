--Create Table Query:

Create Table Koristaja(
Id int PRIMARY KEY identity(1,1),
Nimi varchar(20),
Perenimi varchar(20));

Select * from Koristaja

Create TAble Õppeaine(
Id int PRIMARY KEY identity(1,1),
Nimi varchar(20));

Select * from Õppeaine

Create Table Õpejuhataja(
Id int PRIMARY KEY identity(1,1),
Nimi varchar(20),
Perenimi varchar(20),
Osakond varchar(25));

Select * from Õpejuhataja

Create Table Õpik(
Id int PRIMARY KEY identity(1,1),
Nimi varchar(30),
ÕppeaineID int,
FOREIGN KEY (ÕppeaineID) REFERENCES Õppeaine(Id)
);

Select * from Õpik;

Create TAble Õpetaja(
Id int PRIMARY KEY identity(1,1),
Nimi varchar(20),
Perenimi varchar(20),
ÕpejuhatajaId int,
FOREIGN KEY (ÕpejuhatajaId) REFERENCES Õpejuhataja(Id)
);

Select * from Õpetaja

Create Table Klass(
Id int PRIMARY KEY identity(1,1),
Nimi varchar(2),
ÕpetajaId int,
FOREIGN KEY (ÕpetajaId) REFERENCES Õpetaja(Id)
); 

Select * from Klass;

Create TAble Õpperoom(
Id int PRIMARY KEY identity(1,1),
Number varchar(3),
ÕpetajaId int,
FOREIGN KEY (ÕpetajaId) REFERENCES Õpetaja(Id),
KoristajaId int,
FOREIGN KEY (KoristajaId) REFERENCES Koristaja(Id)
);
Select * from Õpperoom;

Create Table Õpilane (
Id int PRIMARY KEY identity(1,1),
Nimi varchar(20),
Perenimi varchar(20),
Vanus DateTime,
KlassId int,
FOREIGN KEY (KlassId) REFERENCES Klass(Id)
);

Select * from Õpilane

Create Table Õpikut_laenutus(
Id int PRIMARY KEY identity(1,1),
Kuupäev DateTime,
ÕpilaneId Int,
ÕpikId Int,
FOREIGN KEY (ÕpilaneId) REFERENCES Õpilane(Id),
FOREIGN KEY (ÕpikId) REFERENCES Õpik(Id),
); 

Select * from Õpikut_laenutus;

Create Table Välja_pass(
Id int PRIMARY KEY identity(1,1),
Väljaaeg DateTime,
ÕpilaneId Int,
FOREIGN KEY (ÕpilaneId) REFERENCES Õpilane(Id),
);

Select * from Välja_pass;

Create Table Sisse_pass(
Id int PRIMARY KEY identity(1,1),
Sisseaeg DateTime,
ÕpilaneId Int,
FOREIGN KEY (ÕpilaneId) REFERENCES Õpilane(Id));

Select * from Sisse_pass;

--Insert Query:

Insert Into Koristaja(Nimi,Perenimi)
Values ('Irina','Pavlovna');
Insert Into Koristaja(Nimi,Perenimi)
Values ('Olga','Vladimirovna');
Insert Into Koristaja(Nimi,Perenimi)
Values ('Anna','Irinovna');
Insert Into Koristaja(Nimi,Perenimi)
Values ('Andrey','Mlkov');
Insert Into Koristaja(Nimi,Perenimi)
Values ('Valentina','Iranovna');

Select * from Koristaja

Insert Into Õppeaine(Nimi)
Values ('Inglise keeles');
Insert Into Õppeaine(Nimi)
Values ('Muusika');
Insert Into Õppeaine(Nimi)
Values ('Bioloogia');
Insert Into Õppeaine(Nimi)
Values ('Keemia');
Insert Into Õppeaine(Nimi)
Values ('Füüsika');
Insert Into Õppeaine(Nimi)
Values ('Eesti Keel');
Insert Into Õppeaine(Nimi)
Values ('Vene Keel');
Insert Into Õppeaine(Nimi)
Values ('Matemaatika');
Insert Into Õppeaine(Nimi)
Values ('Ajalugu');

Select * from Õppeaine

Insert Into Õpejuhataja(Nimi,Perenimi,Osakond)
VAlues('Irina','Maksimova','Algklassid');
Insert Into Õpejuhataja(Nimi,Perenimi,Osakond)
VAlues('Marje','Burmeister','Põhikool');
Insert Into Õpejuhataja(Nimi,Perenimi,Osakond)
VAlues('Oleg','Garanža','Gümnaasium');

Select * from Õpejuhataja

Insert Into Õpik(Nimi,ÕppeaineID)
Values('Mina õpin inglise keelt!',1);
Insert Into Õpik(Nimi,ÕppeaineID)
Values('With Flying Colours English',1);
Insert Into Õpik(Nimi,ÕppeaineID)
Values('Keel- see on tee',7);
Insert Into Õpik(Nimi,ÕppeaineID)
Values('Koos on LÕBUS',2);
Insert Into Õpik(Nimi,ÕppeaineID)
Values('Nomaadimaa',9);
Insert Into Õpik(Nimi,ÕppeaineID)
Values('Muusikamaa.',2);
Insert Into Õpik(Nimi,ÕppeaineID)
Values('Vene Sõna',7);
Insert Into Õpik(Nimi,ÕppeaineID)
Values('Lodusõpetus!',5);
Insert Into Õpik(Nimi,ÕppeaineID)
Values('Koolibioloogia sõnastik',3);

Select * from Õpik;

Insert Into Õpetaja(Nimi,Perenimi,ÕpejuhatajaId)
Values('Irina','Merkulova',1);
Insert Into Õpetaja(Nimi,Perenimi,ÕpejuhatajaId)
Values('Marija','Oleinik',1);
Insert Into Õpetaja(Nimi,Perenimi,ÕpejuhatajaId)
Values('Anna','Sohromova',1);
Insert Into Õpetaja(Nimi,Perenimi,ÕpejuhatajaId)
Values('Galina','Ivanova',2);
Insert Into Õpetaja(Nimi,Perenimi,ÕpejuhatajaId)
Values('Andrey','Semenov',2);
Insert Into Õpetaja(Nimi,Perenimi,ÕpejuhatajaId)
Values('Ignat','Vadimov',2);
Insert Into Õpetaja(Nimi,Perenimi,ÕpejuhatajaId)
Values('Jhon','Travolta',3);
Insert Into Õpetaja(Nimi,Perenimi,ÕpejuhatajaId)
Values('Gleb','Golubin',3);
Insert Into Õpetaja(Nimi,Perenimi,ÕpejuhatajaId)
Values('Darja','Samarova',3);

Select * from Õpejuhataja

Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Artur','Šuškevitš','2005-12-12',9);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Vlad','Ivanov','2005-10-12',8);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Marina','Muppovna','2006-04-12',6);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Ilnur','Nevrdie','2012-10-04',4);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Ashraf','Bambamovich','2015-02-02',2);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Ashabat','Bonbovich','2005-12-12',1);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Irina','Krutaja','2005-12-12',3);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Elizaveta','Dikovich','2005-12-12',5);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Anastasija','Prijmak','2005-12-12',4);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Dmitriy','Kemppi','2018-02-12',1);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Tom','Miskevich','2005-06-30',9);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Ignat','Boghatyrov','2005-04-04',7);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Maksim','Buivol','2013-01-02',6);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Olga','Denisenko','2014-7-22',5);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Laura','Karpova','2016-12-12',3);
Insert Into Õpilane(Nimi,Perenimi,Vanus,KlassId)
Values('Semen','Olegov','2005-11-16',8);



Select * from Õpilane


Insert INto Klass(Nimi,ÕpetajaId)
Values('1A',1);
Insert INto Klass(Nimi,ÕpetajaId)
Values('2A',2);
Insert INto Klass(Nimi,ÕpetajaId)
Values('3A',3);
Insert INto Klass(Nimi,ÕpetajaId)
Values('5A',4);
Insert INto Klass(Nimi,ÕpetajaId)
Values('6A',5);
Insert INto Klass(Nimi,ÕpetajaId)
Values('7A',6);
Insert INto Klass(Nimi,ÕpetajaId)
Values('9A',7);
Insert INto Klass(Nimi,ÕpetajaId)
Values('9B',8);
Insert INto Klass(Nimi,ÕpetajaId)
Values('9C',9);

Select * from Klass;

Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-06',1,15);
Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-06',2,14);
Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-06',3,13);
Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-07',4,12);
Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-05',5,11);
Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-04',6,10);
Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-03',7,9);
Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-08',8,8);
Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-07',9,7);
Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-03',7,6);
Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-08',8,5);
Insert Into Õpikut_laenutus (Kuupäev,ÕpikId,ÕpilaneId)
Values('2023-06-07',9,4);


Select * from Õpikut_laenutus;

INsert Into Sisse_pass(Sisseaeg,ÕpilaneId)
VAlues('2023-10-15',1)
INsert Into Sisse_pass(Sisseaeg,ÕpilaneId)
VAlues('2023-10-15',2)
INsert Into Sisse_pass(Sisseaeg,ÕpilaneId)
VAlues('2023-10-15',3)
INsert Into Sisse_pass(Sisseaeg,ÕpilaneId)
VAlues('2023-10-15',4)
INsert Into Sisse_pass(Sisseaeg,ÕpilaneId)
VAlues('2023-10-15',5)
INsert Into Sisse_pass(Sisseaeg,ÕpilaneId)
VAlues('2023-10-15',6)
INsert Into Sisse_pass(Sisseaeg,ÕpilaneId)
VAlues('2023-10-15',7)
INsert Into Sisse_pass(Sisseaeg,ÕpilaneId)
VAlues('2023-10-15',8)
INsert Into Sisse_pass(Sisseaeg,ÕpilaneId)
VAlues('2023-10-15',9)
INsert Into Sisse_pass(Sisseaeg,ÕpilaneId)
VAlues('2023-10-15',10)
INsert Into Sisse_pass(Sisseaeg,ÕpilaneId)
VAlues('2023-10-15',11)

Select * from Sisse_pass
