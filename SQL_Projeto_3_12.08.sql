SELECT
  COUNT(*) AS number_of_rows
FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp

WITH crimes_2020 AS (SELECT * FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp)
SELECT * FROM crimes_2020
WHERE Ano =2020;

WITH crimes_2019 AS (SELECT * FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp)
SELECT * FROM crimes_2019
WHERE Ano =2019;

ALTER TABLE projeto-3-desenvolve-0408.base_crimes.base_crimes_sp
RENAME COLUMN `Furtos na região` TO Furtos_na_regiao,
RENAME COLUMN `Roubo de Veiculo` TO roubo_veiculo_1,
RENAME COLUMN `Roubo de veiculos` TO roubo_veiculo_2,
RENAME COLUMN `Roubo de carga` TO Roubo_carga,
RENAME COLUMN `Furto de veiculo` TO Furto_veiculo,
RENAME COLUMN `Homicídio doloso por acidente de trânsito` TO Homicido_doloso_acidente,
RENAME COLUMN `Homicídio Culposo por acidente de Trânsito` TO Homicido_culposo_acidente,
RENAME COLUMN `Homicídio Culposo` TO Homicido_culposo,
RENAME COLUMN `Tentativa de Homicídio` TO Tentativa_homicido,
RENAME COLUMN `Lesão Corporal seguida de morte` TO Lesao_corporal_seguida_morte,
RENAME COLUMN `Lesão Corporal Dolosa` TO Lesao_corporal_dolosa,
RENAME COLUMN `Lesão Corporal Culposa por acidente de trânsito` TO Lesao_corporal_culposa_acidente,
RENAME COLUMN `Lesão Corporal Culposa` TO Lesao_corporal_culposa,
RENAME COLUMN `Estupro de vulnerável` TO Estupro_vulneravel,
RENAME COLUMN `Roubo a Banco ` TO Roubo_banco

ALTER TABLE projeto-3-desenvolve-0408.base_crimes.base_crimes_sp
RENAME COLUMN Tentativa_homicido TO Tentativa_homicidio

SELECT Delegacia, Ano, SUM (roubo_veiculo_1 + roubo_veiculo_2) AS Roubo_veiculo
FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp
GROUP BY Delegacia, Ano;

SELECT Ano,
SUM(Furtos_na_regiao) AS Soma_furtos_na_regiao,
SUM(Roubo_carga) AS Soma_roubo_carga,
SUM(Roubos) AS Soma_roubos,
SUM(roubo_veiculo_1 + roubo_veiculo_2) AS Soma_roubo_veiculo,
SUM(Furto_veiculo) AS Soma_furto_veiculo,
SUM (Latrocinios) As Soma_total_lat,
SUM(Homicido_doloso_acidente) AS Soma_homicido_doloso_acidente,
SUM(Homicido_culposo_acidente) AS Soma_homicido_culposo_acidente,
SUM(Homicido_culposo) AS Soma_homicido_culposo,
SUM(Tentativa_homicidio) AS Soma_tentativa_homicidio,
SUM(Lesao_corporal_seguida_morte) AS Soma_lesao_corporal_morte,
SUM(Lesao_corporal_dolosa) AS Soma_lesao_corporal_dolosa,
SUM(Lesao_corporal_culposa_acidente) AS Soma_lesao_corporal_culposa_acidente,
SUM(Lesao_corporal_culposa) AS Soma_lesao_corporal_culposa,
SUM(Estupro) AS Soma_estupro,
SUM(Estupro_vulneravel) AS Soma_estupro_vulneravel,
SUM(Roubo_banco) AS Soma_roubo_banco,
FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp
GROUP BY Ano;

SELECT Ano,
ROUND(AVG(Furtos_na_regiao),2) AS Media_furtos_na_regiao,
ROUND(AVG(Roubo_carga),2) AS Media_roubo_carga,
ROUND(AVG(Roubos),2) AS Media_roubos,
ROUND(AVG(roubo_veiculo_1 + roubo_veiculo_2),2) AS Media_roubo_veiculo,
ROUND(AVG(Furto_veiculo),2) AS Media_furto_veiculo,
ROUND(AVG (Latrocinios),2) AS Media_total_lat,
ROUND(AVG(Homicido_doloso_acidente),2) AS Media_homicido_doloso_acidente,
ROUND(AVG(Homicido_culposo_acidente),2) AS Media_homicido_culposo_acidente,
ROUND(AVG(Homicido_culposo),2) AS Media_homicido_culposo,
ROUND(AVG(Tentativa_homicidio),2) AS Media_tentativa_homicido,
ROUND(AVG(Lesao_corporal_seguida_morte),2) AS Media_lesao_corporal_morte,
ROUND(AVG(Lesao_corporal_dolosa),2) AS Media_lesao_corporal_dolosa,
ROUND(AVG(Lesao_corporal_culposa_acidente),2) AS Media_lesao_corporal_culposa_acidente,
ROUND(AVG(Lesao_corporal_culposa),2) AS Media_lesao_corporal_culposa,
ROUND(AVG(Estupro),2) AS Media_estupro,
ROUND(AVG(Estupro_vulneravel),2) AS Media_estupro_vulneravel,
ROUND(AVG(Roubo_banco),2) AS Media_roubo_banco,
FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp
GROUP BY Ano;

SELECT Delegacia,Ano,
SUM(Furtos_na_regiao + `Roubo de carga` + Roubos + Estupro),
FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp
GROUP BY Delegacia,Ano;  


SELECT Delegacia,Ano,
SUM (Furtos_na_regiao + Roubos + roubo_veiculo_1 + roubo_veiculo_2 + Roubo_carga + Furto_veiculo + Homicido_doloso_acidente + Homicido_culposo_acidente + Homicido_culposo + Tentativa_homicidio + Lesao_corporal_seguida_morte + Lesao_corporal_dolosa + Lesao_corporal_culposa_acidente + Lesao_corporal_culposa + Estupro_vulneravel + Roubo_banco + Latrocinios + Estupro ) AS Qntd_crimes,
FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp
GROUP BY Delegacia,Ano
HAVING Qntd_crimes > 1
ORDER BY Qntd_crimes DESC;  

SELECT Delegacia,Ano,
SUM (Furtos_na_regiao + Roubos + roubo_veiculo_1 + roubo_veiculo_2 + Roubo_carga + Furto_veiculo + Homicido_doloso_acidente + Homicido_culposo_acidente + Homicido_culposo + Tentativa_homicidio + Lesao_corporal_seguida_morte + Lesao_corporal_dolosa + Lesao_corporal_culposa_acidente + Lesao_corporal_culposa + Estupro_vulneravel + Roubo_banco + Latrocinios + Estupro ) AS Qntd_crimes,
FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp
GROUP BY Delegacia,Ano
HAVING Qntd_crimes > 1000
ORDER BY Qntd_crimes DESC;  

SELECT DISTINCT Delegacia
FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp

SELECT DISTINCT Furtos_na_regiao
FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp
WHERE Furtos_na_regiao IS NOT NULL
ORDER BY Furtos_na_regiao DESC


SELECT Delegacia, Furtos_na_regiao, Roubos
FROM projeto-3-desenvolve-0408.base_crimes.base_crimes_sp
WHERE Furtos_na_regiao > 1000 AND Roubos > 1000

SELECT Ano, Crimes, Total
FROM (
SELECT Ano,
Soma_furtos_na_regiao,
Soma_roubo_carga,
Soma_roubos,
Soma_roubo_veiculo,
Soma_furto_veiculo,
Soma_total_lat,
Soma_homicido_doloso_acidente,
Soma_homicido_culposo_acidente,
Soma_homicido_culposo,
Soma_tentativa_homicidio,
Soma_lesao_corporal_morte,
Soma_lesao_corporal_dolosa,
Soma_lesao_corporal_culposa_acidente,
Soma_lesao_corporal_culposa,
Soma_estupro,
Soma_estupro_vulneravel,
Soma_roubo_banco
FROM projeto-3-desenvolve-0408.base_crimes.soma_crimes_ano)
AS tabColunas
UNPIVOT (Total FOR Crimes IN
(Soma_furtos_na_regiao,
Soma_roubo_carga,
Soma_roubos,
Soma_roubo_veiculo,
Soma_furto_veiculo,
Soma_total_lat,
Soma_homicido_doloso_acidente,
Soma_homicido_culposo_acidente,
Soma_homicido_culposo,
Soma_tentativa_homicidio,
Soma_lesao_corporal_morte,
Soma_lesao_corporal_dolosa,
Soma_lesao_corporal_culposa_acidente,
Soma_lesao_corporal_culposa,
Soma_estupro,
Soma_estupro_vulneravel,
Soma_roubo_banco
))
AS tabLinhas