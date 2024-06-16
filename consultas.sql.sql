USE horizon_airlines;

-- Listagem de Aeronaves ordenadas por tipo
SELECT * FROM Aeronave
ORDER BY Tipo;

-- Relatório de Vôos das Aeronaves por período

-- Relatório por dia
SELECT * FROM Voo
WHERE DATE(Horario_Saida) = '2023-06-01';

-- Relatório por semana
SELECT * FROM Voo
WHERE YEARWEEK(Horario_Saida, 1) = YEARWEEK('2023-06-01', 1);

-- Relatório por mês
SELECT * FROM Voo
WHERE MONTH(Horario_Saida) = 6 AND YEAR(Horario_Saida) = 2023;

-- Listagem de vôos que fazem escala em um determinado local
SELECT V.* FROM Voo V
JOIN Escala E ON V.ID_Voo = E.ID_Voo
WHERE E.Aeroporto_Saida = 'MIA';

-- Exibição de poltronas disponíveis em um determinado vôo/avião
SELECT P.* FROM Poltrona P
JOIN Voo V ON P.ID_Aeronave = V.ID_Aeronave
WHERE V.ID_Voo = 1 AND P.Disponibilidade = TRUE;
