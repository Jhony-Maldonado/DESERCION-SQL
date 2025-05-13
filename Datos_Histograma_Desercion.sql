
SELECT NOM_REGIONAL, COUNT(*)
FROM Desercion.dbo.Desercion_Clean_NNN
group by NOM_REGIONAL 

SELECT NOM_CENTRO, COUNT(*)
FROM Desercion.dbo.Desercion_Clean_NNN
group by NOM_CENTRO 

SELECT NOM_PROGRAMA_FORMACION, COUNT(*)
FROM Desercion.dbo.Desercion_Clean_NNN
group by NOM_PROGRAMA_FORMACION 

SELECT NIVEL_FORMACION, COUNT(*)
FROM Desercion.dbo.Desercion_Clean_NNN
group by NIVEL_FORMACION 

SELECT NOM_PROGRAMA_FORMACION, COUNT(*)
FROM Desercion.dbo.Desercion_Clean_NNN
group by NOM_PROGRAMA_FORMACION 
order BY NOM_PROGRAMA_FORMACION

SELECT NIVEL_FORMACION, COUNT(*)
FROM Desercion.dbo.Desercion_Clean_NNN
group by NIVEL_FORMACION 
order BY NIVEL_FORMACION

SELECT NOM_CENTRO, COUNT(*)
FROM Desercion.dbo.Desercion_Clean_NNN
group by NOM_CENTRO 
order BY COUNT(*) desc

SELECT MIN(Desercion_Clean_NNN.FECHA_INICIO_FICHA), max(Desercion_Clean_NNN.FECHA_INICIO_FICHA)
FROM Desercion.dbo.Desercion_Clean_NNN

SELECT NOM_CENTRO, COUNT(*)
FROM Desercion.dbo.Desercion_Clean_NNN
where year(Desercion_Clean_NNN.FECHA_TERMINACION_FICHA) = 2024
group by NOM_CENTRO 
order BY count(*) desc

SELECT NOM_REGIONAL, avg(TOTAL_APRENDICES_MATRICULADOS)
FROM Desercion.dbo.Desercion_Clean_NNN
where year(Desercion_Clean_NNN.FECHA_INICIO_FICHA) = 2024
group by NOM_REGIONAL 
order BY avg(TOTAL_APRENDICES_MATRICULADOS) desc

SELECT NOM_PROGRAMA_FORMACION, COUNT(*)
FROM Desercion.dbo.Desercion_Clean_NNN
where year(Desercion_Clean_NNN.FECHA_INICIO_FICHA) = 2023
group by NOM_PROGRAMA_FORMACION 
order BY count(*) desc

SELECT NOM_PROGRAMA_FORMACION, COUNT(*) as "Programa de Formación", AVG(DESERTORES_AÑO_ACTUAL) as "Promedio Desertores"
FROM Desercion.dbo.Desercion_Clean_NNN
where year(Desercion_Clean_NNN.FECHA_INICIO_FICHA) = 2023
group by NOM_PROGRAMA_FORMACION 
order BY count(*) desc