📊 Analyse de la consommation d’énergie en France

🎯 Objectif du projet

Ce projet analyse la consommation d’énergie par région, statut énergétique et année à partir d’une base de données Snowflake.
L’objectif est de produire des indicateurs et des visualisations permettant d’identifier les tendances de consommation.

🛠️ Technologies utilisées

❄️ Snowflake — Stockage et exploitation des données

🧠 SQL — Agrégations, filtres, jointures et analyse

📊 Power BI — Dashboard interactif

💡 DAX — Mesures et indicateurs

🗂️ GitHub — Documentation et partage du projet

📂 Structure du projet
01_data                → Données sources (CSV, exports…)
02_sql_queries         → Requêtes SQL utilisées dans le projet
03_powerbi_dashboard   → Dashboard Power BI (.pbix) + captures
README.md              → Présentation du projet

🧮 Analyse SQL (aperçu)

Les requêtes complètes se trouvent dans :
📁 /02_sql_queries/analyse_consommation.sql

🔸 Consommation totale par année
SELECT annee, SUM(consommation) AS total_mwh
FROM consommation
GROUP BY annee
ORDER BY annee;
🔸 Consommation par région
SELECT region, SUM(consommation) AS consommation_region
FROM consommation
GROUP BY region
ORDER BY consommation_region DESC;
🔸 Consommation par statut
SELECT statut, SUM(consommation) AS consommation_statut
FROM consommation
GROUP BY statut
ORDER BY consommation_statut DESC;

📊 Dashboard Power BI

Le dashboard final comporte :

l’évolution annuelle de la consommation

la répartition par région

la répartition par statut énergétique

des indicateurs de variations année sur année

📁 Le fichier complet se trouve dans :
/03_powerbi_dashboard

📌 Principaux enseignements (insights)

Les niveaux de consommation varient fortement selon les régions.

Certains statuts énergétiques dominent en fonction des zones.

L’analyse temporelle met en évidence des tendances annuelles (hausse/baisse).

👤 Auteur

Nawel FERJANI
LinkedIn : www.linkedin.com/in/nawel-ferjani
Email : nawelr38@gmail.com
