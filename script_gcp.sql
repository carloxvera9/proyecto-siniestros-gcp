
------------
-- Total de siniestros por tipo

SELECT tipo_siniestro, COUNT(*) AS total_siniestros
FROM `proyecto-analisis-siniestros.siniestros_dataset.siniestros`
GROUP BY tipo_siniestro
ORDER BY total_siniestros DESC;

--Siniestros por zona geográfica

SELECT `zona_geográfica`, COUNT(*) AS total
FROM `proyecto-analisis-siniestros.siniestros_dataset.siniestros`
GROUP BY `zona_geográfica`
ORDER BY total DESC;


-- Monto total y promedio por tipo de siniestro

SELECT tipo_siniestro,
       ROUND(SUM(monto_estimado), 2) AS monto_total,
       ROUND(AVG(monto_estimado), 2) AS monto_promedio
FROM `proyecto-analisis-siniestros.siniestros_dataset.siniestros`
GROUP BY tipo_siniestro
ORDER BY monto_total DESC;


-- Cantidad de siniestros por año

SELECT EXTRACT(YEAR FROM fecha_evento) AS anio,
       COUNT(*) AS total_siniestros
FROM `proyecto-analisis-siniestros.siniestros_dataset.siniestros`
GROUP BY anio
ORDER BY anio;


--Top 5 clientes con más siniestros

SELECT id_cliente, COUNT(*) AS siniestros_reportados
FROM `proyecto-analisis-siniestros.siniestros_dataset.siniestros`
GROUP BY id_cliente
ORDER BY siniestros_reportados DESC
LIMIT 5;