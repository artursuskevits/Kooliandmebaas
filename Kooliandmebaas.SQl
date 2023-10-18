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
