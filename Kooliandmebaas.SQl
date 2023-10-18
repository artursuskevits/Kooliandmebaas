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
