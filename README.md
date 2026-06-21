# Musee d'art - Data Engineering Case Study
![MySQL](https://img.shields.io/badge/MySQL-8.0%2B-4479A1?logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Advanced-336791?logo=postgresql&logoColor=white)
![Database Design](https://img.shields.io/badge/Database-Modeling-0F766E?logo=databricks&logoColor=white)
![Triggers](https://img.shields.io/badge/SQL-Triggers-8B0000?logo=mysql&logoColor=white)
![Views](https://img.shields.io/badge/SQL-Views-1D4ED8?logo=mysql&logoColor=white)
![Business Intelligence](https://img.shields.io/badge/BI-Business%20Intelligence-7C3AED?logo=powerbi&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-Dashboard-E97627?logo=tableau&logoColor=white)
![Data Analytics](https://img.shields.io/badge/Data-Analytics-059669?logo=googleanalytics&logoColor=white)
![Data Modeling](https://img.shields.io/badge/Data-Modeling-2563EB?logo=diagramsdotnet&logoColor=white)
![Draw.io](https://img.shields.io/badge/Draw.io-ERD%20%26%20MCD-F08705?logo=diagramsdotnet&logoColor=white)
![JSON](https://img.shields.io/badge/JSON-Export-000000?logo=json&logoColor=white)
![Portfolio Project](https://img.shields.io/badge/Project-Portfolio-111827?logo=github&logoColor=white)

Ce projet presente la conception d'une base de donnees relationnelle pour un musee d'art, pensee comme un cas d'usage realiste de pilotage des collections, des expositions, des equipes et de la frequentation visiteurs. Le depot a ete restructure comme une vitrine technique orientee portfolio afin de demontrer des competences en modelisation de donnees, SQL avance et Business Intelligence avec Tableau.

## Contexte metier

Un musee ne gere pas seulement des oeuvres. Il doit aussi:

- suivre la localisation des collections par salle et par etage,
- planifier des expositions temporaires avec des contraintes de capacite,
- tracer les restaurations et les types d'intervention,
- organiser les equipes terrain, notamment les guides, restaurateurs et concierges,
- analyser la frequentation pour ajuster l'offre de visite et les ressources.

Dans ce cas d'etude, la base centralise ces dimensions afin de fournir un socle unique pour la gestion operationnelle et pour l'analyse decisionnelle. Le projet couvre 21 oeuvres, 5 salles, 5 expositions temporaires, 15 employes specialises et 100 visiteurs issus de plusieurs zones du canton de Neuchatel.

## Objectifs du projet

- Structurer un modele de donnees coherent pour un environnement museal.
- Garantir l'integrite des informations sensibles, comme les dates de creation des oeuvres.
- Produire des requetes metier utiles au pilotage des espaces, des restaurations et des ressources humaines.
- Alimenter des visualisations Tableau sur la demande de visites guidees, l'affluence par jour et la provenance geographique des visiteurs.

## Architecture du depot

```text
.
|-- analytics/
|   |-- archive/
|   |   `-- groupe_8_requetes_legacy.sql
|   |-- sql/
|   |   |-- 01_collection_queries.sql
|   |   `-- 02_bi_queries.sql
|   `-- tableau/
|       `-- groupe_8_visualisations.twb
|-- database/
|   |-- archive/
|   |   |-- groupe_8_donnees_legacy.sql
|   |   `-- groupe_8_structure_bdd_legacy.sql
|   |-- logic/
|   |   |-- 01_trigger_verifier_annee_creation.sql
|   |   `-- 02_view_vue_employes_roles.sql
|   |-- schema/
|   |   |-- 01_tables.sql
|   |   `-- 02_indexes.sql
|   `-- seeds/
|       `-- 01_seed_data.sql
|-- docs/
|   |-- architecture/
|   |   |-- groupe_8_model_conceptuel.drawio
|   |   `-- groupe_8_model_relationnel.drawio
|   |-- exports/
|   |   `-- groupe_8_json.json
|   |-- images/
|   |   |-- architecture/
|   |   `-- dashboards/
|   |-- presentation/
|   |   `-- groupe_8_presentation_finale.pptx
|   `-- report/
|       `-- groupe_8_rapport.pdf
|-- .gitignore
`-- README.md
```

## Architecture et modelisation

Le modele repose sur une logique de supertype/sous-types autour de `Humain`, qui permet de mutualiser les informations d'identite avant de specialiser les individus en `Employes`, `Artistes` et `Visiteurs`. Cette approche evite la duplication, facilite les jointures transverses et rend l'evolution du schema plus robuste.

Les entites centrales sont:

- `Oeuvres`, pivot de la collection et rattachees a un artiste, un type d'oeuvre et une salle.
- `Expositions` et `Oeuvre_Exposition`, qui modelisent la programmation temporaire.
- `Restaurations` et `Type_Intervention`, qui historisent l'entretien patrimonial.
- `Billets` et `Visiteurs`, qui servent de base aux analyses de frequentation.
- `Guides`, `Restaurateur`, `Concierge` et `Guide_Langue`, qui donnent une lecture operationnelle des ressources humaines.

Placeholders pour les schemas a exporter depuis Draw.io:

![Modele conceptuel](docs/images/architecture/modele-conceptuel.png)
![Modele relationnel](docs/images/architecture/modele-relationnel.png)

## Details techniques et fonctionnalites cles

### 1. Controle d'integrite avec trigger

Le trigger [`verifier_annee_creation`](database/logic/01_trigger_verifier_annee_creation.sql) bloque l'insertion d'une oeuvre dont l'annee de creation serait posterieure a l'annee courante. C'est un bon exemple de controle metier au plus pres de la donnee: meme si une application cliente se trompe, la base refuse une incoherence patrimoniale evidente.

### 2. Vue metier enrichie pour les ressources humaines

La vue [`vue_employes_roles`](database/logic/02_view_vue_employes_roles.sql) consolide les employes avec leur role operationnel, leurs langues, leur etage d'affectation et leur expertise de restauration. Elle sert de couche de lecture pour:

- identifier rapidement les guides multilingues,
- visualiser la repartition des profils terrain,
- connecter les analyses RH a des besoins concrets de mediation et de conservation.

### 3. Mesures metier sur l'occupation des salles

La requete de densite dans [`analytics/sql/01_collection_queries.sql`](analytics/sql/01_collection_queries.sql) calcule le nombre d'oeuvres par metre carre et classe les salles par niveau d'occupation. Ce type d'indicateur est utile pour:

- detecter les salles surchargees,
- equilibrer les parcours visiteurs,
- preparer les futures expositions en limitant les risques de saturation.

Sur le jeu de donnees actuel:

- `Salle 3` est la plus dense avec `6` oeuvres sur `95 m2`, soit `0.0632 oeuvre/m2`.
- `Salle 2` est la moins chargee avec `2` oeuvres sur `120 m2`, soit `0.0167 oeuvre/m2`.

### 4. Pilotage des restaurations

La requete de suivi des interventions met en avant l'activite de conservation dans le temps. L'intervention la plus frequente est `Nettoyage et conservation des sculptures` avec `4` restaurations entre `2025-02-20` et `2026-02-01`, ce qui peut orienter la planification des competences et des budgets de maintenance.

## Business Intelligence avec Tableau

Le classeur Tableau se trouve dans [`analytics/tableau/groupe_8_visualisations.twb`](analytics/tableau/groupe_8_visualisations.twb). Il exploite les requetes du dossier `analytics/sql` pour produire une lecture decisionnelle de la frequentation.

### Insights metier

- La visite libre domine nettement: `75` visiteurs sans guide contre `25` en visite guidee. Cela suggere de calibrer finement la capacite des guides plutot que de surdimensionner l'offre.
- L'affluence hebdomadaire est relativement stable, avec un plateau a `15` visiteurs du lundi au jeudi, puis un leger retrait le vendredi (`14`) et le week-end (`13`).
- La provenance geographique est bien repartie dans le canton, avec une concentration marquee sur les codes postaux `2072` et `2074` (`9` visiteurs chacun). Cette lecture est utile pour cibler des actions de communication locale.

Placeholders pour les captures d'ecran Tableau:

![Dashboard - mix guide vs libre](docs/images/dashboards/dashboard-visites-guidees.png)
![Dashboard - affluence hebdomadaire](docs/images/dashboards/dashboard-affluence-semaine.png)
![Dashboard - provenance geographique](docs/images/dashboards/dashboard-provenance-neuchatel.png)

## Requetes portfolio a mettre en avant

- Couverture linguistique des guides pour adapter les visites a la demande internationale.
- Densite d'oeuvres par salle pour piloter l'occupation des espaces.
- Programmation des expositions avec nombre d'oeuvres exposees et duree.
- Matrice des roles employes via la vue metier.
- Repartition des restaurations par type d'intervention.
- Segmentation visiteurs pour les dashboards BI.

## Execution

Ordre recommande:

1. [`database/schema/01_tables.sql`](database/schema/01_tables.sql)
2. [`database/schema/02_indexes.sql`](database/schema/02_indexes.sql)
3. [`database/seeds/01_seed_data.sql`](database/seeds/01_seed_data.sql)
4. [`database/logic/01_trigger_verifier_annee_creation.sql`](database/logic/01_trigger_verifier_annee_creation.sql)
5. [`database/logic/02_view_vue_employes_roles.sql`](database/logic/02_view_vue_employes_roles.sql)
6. Requetes analytiques dans [`analytics/sql`](analytics/sql)
