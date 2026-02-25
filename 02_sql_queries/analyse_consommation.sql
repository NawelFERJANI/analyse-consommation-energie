-- Analyse de la consommation d'énergie
-- Projet Portfolio - Data Analyst
-- Auteur : [Ton Nom]

------------------------------------------------------
-- 1. Consommation totale par année
------------------------------------------------------
SELECT 
    annee, 
    SUM(consommation) AS total_mwh
FROM consommation
GROUP BY annee
ORDER BY annee;

------------------------------------------------------
-- 2. Consommation par région
------------------------------------------------------
SELECT 
    region, 
    SUM(consommation) AS consommation_region
FROM consommation
GROUP BY region
ORDER BY consommation_region DESC;

------------------------------------------------------
-- 3. Consommation par statut
------------------------------------------------------
SELECT 
    statut, 
    SUM(consommation) AS consommation_statut
FROM consommation
GROUP BY statut
ORDER BY consommation_statut DESC;

------------------------------------------------------
-- 4. Variation année sur année (YoY)
------------------------------------------------------
SELECT 
    a.annee,
    SUM(a.consommation) AS consommation_annee,
    SUM(a.consommation) - SUM(b.consommation) AS variation_yoy
FROM consommation a
LEFT JOIN consommation b 
    ON a.region = b.region
    AND a.statut = b.statut
    AND a.annee = b.annee + 1
GROUP BY a.annee
ORDER BY a.annee;
