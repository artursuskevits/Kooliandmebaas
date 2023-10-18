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
