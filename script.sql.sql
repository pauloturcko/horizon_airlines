USE horizon_airlines;

CREATE TABLE Aeronave (
    ID_Aeronave INT PRIMARY KEY,
    Tipo VARCHAR(255),
    Numero_Poltronas INT
);

CREATE TABLE Voo (
    ID_Voo INT PRIMARY KEY,
    Aeroporto_Origem VARCHAR(255),
    Aeroporto_Destino VARCHAR(255),
    Horario_Saida DATETIME,
    Horario_Chegada_Prevista DATETIME,
    ID_Aeronave INT,
    FOREIGN KEY (ID_Aeronave) REFERENCES Aeronave(ID_Aeronave)
);

CREATE TABLE Escala (
    ID_Escala INT PRIMARY KEY,
    ID_Voo INT,
    Aeroporto_Saida VARCHAR(255),
    Horario_Saida DATETIME,
    FOREIGN KEY (ID_Voo) REFERENCES Voo(ID_Voo)
);

CREATE TABLE Horario (
    ID_Horario INT PRIMARY KEY,
    ID_Voo INT,
    Data_Horario DATETIME,
    FOREIGN KEY (ID_Voo) REFERENCES Voo(ID_Voo)
);

CREATE TABLE Poltrona (
    ID_Poltrona INT PRIMARY KEY,
    ID_Aeronave INT,
    Localizacao VARCHAR(255),
    Disponibilidade BOOLEAN,
    FOREIGN KEY (ID_Aeronave) REFERENCES Aeronave(ID_Aeronave)
);

CREATE TABLE Cliente_Preferencial (
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(255),
    Email VARCHAR(255),
    Telefone VARCHAR(255)
);
