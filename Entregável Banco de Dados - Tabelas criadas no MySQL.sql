create database sprint1;

use sprint1;

create table cadastro(
idCadastro int primary key auto_increment,
Nome varchar (50) not null,
Sobrenome varchar (50) not null,
usuário varchar (50) not null unique,
email varchar (50) not null unique,
senha varchar (50) not null,
CPFouCNPJ varchar (14) not null unique,
nomeFantasia varchar (50),
dataAbertura date,
cidade varchar (50),
cep char (8),
telefone char (11) not null unique);

select * from cadastro;

create table maquinario(
idMaq int primary key auto_increment,
setor varchar (50) not null,
Nomenclatura varchar (50) not null unique,
Numeracao varchar (50) unique,
MateriaPrima varchar (50) not null, constraint Chkmaterial check (MateriaPrima in ('Polipropileno', 'POM', 'Polietileno', 'Policarbonato','Tereftalato','Poliamida','Nylon 6','Nylon 12', 'Nylon 66')),
DataUltimaManutenção date);

select * from maquinario;

create table arduino(
idArduino int primary key auto_increment,
NumSerie varchar (50) unique,
LocalInstalacao varchar (50) not null,
Hora timestamp,
TempMax float not null,
TempMin float not null);

select * from arduino;
