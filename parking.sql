CREATE DATABASE parkingdb;

USE parkingdb;

CREATE TABLE Vehiculos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Marca VARCHAR(50) NOT NULL,
    Modelo VARCHAR(50) NOT NULL,
    Matricula VARCHAR(10) NOT NULL UNIQUE,
    NumeroBastidor VARCHAR(50) NOT NULL,
    Saldo DECIMAL(10, 2) NOT NULL CHECK (Saldo <= 500),
    DNIConductor VARCHAR(20) NOT NULL
);

CREATE TABLE Entradas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Matricula VARCHAR(10) NOT NULL,
    HoraEntrada DATETIME NOT NULL,
    HoraSalida DATETIME,
    FOREIGN KEY (Matricula) REFERENCES Vehiculos(Matricula)
);
