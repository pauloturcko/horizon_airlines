USE horizon_airlines;

-- Insert Aeronave
INSERT INTO Aeronave (ID_Aeronave, Tipo, Numero_Poltronas) VALUES (1, 'Boeing 737', 180);
INSERT INTO Aeronave (ID_Aeronave, Tipo, Numero_Poltronas) VALUES (2, 'Airbus A320', 160);
INSERT INTO Aeronave (ID_Aeronave, Tipo, Numero_Poltronas) VALUES (3, 'Boeing 777', 300);
INSERT INTO Aeronave (ID_Aeronave, Tipo, Numero_Poltronas) VALUES (4, 'Airbus A380', 500);

-- Insert Voo
INSERT INTO Voo (ID_Voo, Aeroporto_Origem, Aeroporto_Destino, Horario_Saida, Horario_Chegada_Prevista, ID_Aeronave) 
VALUES (1, 'GRU', 'JFK', '2023-06-01 10:00:00', '2023-06-01 18:00:00', 1);
INSERT INTO Voo (ID_Voo, Aeroporto_Origem, Aeroporto_Destino, Horario_Saida, Horario_Chegada_Prevista, ID_Aeronave) 
VALUES (2, 'GRU', 'LAX', '2023-06-02 12:00:00', '2023-06-02 20:00:00', 2);
INSERT INTO Voo (ID_Voo, Aeroporto_Origem, Aeroporto_Destino, Horario_Saida, Horario_Chegada_Prevista, ID_Aeronave) 
VALUES (3, 'GRU', 'LHR', '2023-06-03 15:00:00', '2023-06-04 06:00:00', 3);
INSERT INTO Voo (ID_Voo, Aeroporto_Origem, Aeroporto_Destino, Horario_Saida, Horario_Chegada_Prevista, ID_Aeronave) 
VALUES (4, 'GRU', 'CDG', '2023-06-04 08:00:00', '2023-06-04 18:00:00', 4);

-- Insert Escala
INSERT INTO Escala (ID_Escala, ID_Voo, Aeroporto_Saida, Horario_Saida) 
VALUES (1, 1, 'MIA', '2023-06-01 14:00:00');
INSERT INTO Escala (ID_Escala, ID_Voo, Aeroporto_Saida, Horario_Saida) 
VALUES (2, 2, 'DFW', '2023-06-02 16:00:00');
INSERT INTO Escala (ID_Escala, ID_Voo, Aeroporto_Saida, Horario_Saida) 
VALUES (3, 3, 'MAD', '2023-06-03 20:00:00');
INSERT INTO Escala (ID_Escala, ID_Voo, Aeroporto_Saida, Horario_Saida) 
VALUES (4, 4, 'FRA', '2023-06-04 12:00:00');

-- Insert Horario
INSERT INTO Horario (ID_Horario, ID_Voo, Data_Horario) 
VALUES (1, 1, '2023-06-01 10:00:00');
INSERT INTO Horario (ID_Horario, ID_Voo, Data_Horario) 
VALUES (2, 2, '2023-06-02 12:00:00');
INSERT INTO Horario (ID_Horario, ID_Voo, Data_Horario) 
VALUES (3, 3, '2023-06-03 15:00:00');
INSERT INTO Horario (ID_Horario, ID_Voo, Data_Horario) 
VALUES (4, 4, '2023-06-04 08:00:00');

-- Insert Poltrona
INSERT INTO Poltrona (ID_Poltrona, ID_Aeronave, Localizacao, Disponibilidade) 
VALUES (1, 1, 'Janela', TRUE);
INSERT INTO Poltrona (ID_Poltrona, ID_Aeronave, Localizacao, Disponibilidade) 
VALUES (2, 1, 'Corredor', FALSE);
INSERT INTO Poltrona (ID_Poltrona, ID_Aeronave, Localizacao, Disponibilidade) 
VALUES (3, 2, 'Janela', TRUE);
INSERT INTO Poltrona (ID_Poltrona, ID_Aeronave, Localizacao, Disponibilidade) 
VALUES (4, 2, 'Corredor', TRUE);
INSERT INTO Poltrona (ID_Poltrona, ID_Aeronave, Localizacao, Disponibilidade) 
VALUES (5, 3, 'Janela', FALSE);
INSERT INTO Poltrona (ID_Poltrona, ID_Aeronave, Localizacao, Disponibilidade) 
VALUES (6, 3, 'Corredor', TRUE);
INSERT INTO Poltrona (ID_Poltrona, ID_Aeronave, Localizacao, Disponibilidade) 
VALUES (7, 4, 'Janela', TRUE);
INSERT INTO Poltrona (ID_Poltrona, ID_Aeronave, Localizacao, Disponibilidade) 
VALUES (8, 4, 'Corredor', FALSE);

-- Insert Cliente_Preferencial
INSERT INTO Cliente_Preferencial (ID_Cliente, Nome, Email, Telefone) 
VALUES (1, 'João Silva', 'joao.silva@example.com', '123456789');
INSERT INTO Cliente_Preferencial (ID_Cliente, Nome, Email, Telefone) 
VALUES (2, 'Maria Oliveira', 'maria.oliveira@example.com', '987654321');
INSERT INTO Cliente_Preferencial (ID_Cliente, Nome, Email, Telefone) 
VALUES (3, 'Carlos Souza', 'carlos.souza@example.com', '1122334455');
INSERT INTO Cliente_Preferencial (ID_Cliente, Nome, Email, Telefone) 
VALUES (4, 'Ana Lima', 'ana.lima@example.com', '9988776655');
INSERT INTO Cliente_Preferencial (ID_Cliente, Nome, Email, Telefone) 
VALUES (5, 'Fernanda Costa', 'fernanda.costa@example.com', '5566778899');
