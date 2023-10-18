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
