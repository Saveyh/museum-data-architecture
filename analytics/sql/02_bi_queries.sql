-- 1. Visitor mix: guided vs self-service visits
SELECT
    CASE
        WHEN b.visite_guide THEN 'Visite guidee'
        ELSE 'Visite libre'
    END AS type_visite,
    COUNT(v.ID_visiteur) AS nb_visiteurs
FROM Visiteurs v
JOIN Billets b
    ON b.ID_billet = v.ID_billet
GROUP BY b.visite_guide
ORDER BY nb_visiteurs DESC;

-- 2. Traffic by day of week
SELECT
    j.ID_jour,
    j.jour_semaine,
    COUNT(v.ID_visiteur) AS nb_visiteurs
FROM Jour j
LEFT JOIN Billets b
    ON b.ID_jour = j.ID_jour
LEFT JOIN Visiteurs v
    ON v.ID_billet = b.ID_billet
GROUP BY j.ID_jour, j.jour_semaine
ORDER BY j.ID_jour ASC;

-- 3. Geographic footprint within the canton of Neuchatel
SELECT
    v.code_postal,
    COUNT(v.ID_visiteur) AS nb_visiteurs
FROM Visiteurs v
GROUP BY v.code_postal
ORDER BY nb_visiteurs DESC, v.code_postal ASC;

-- 4. Guided-tour demand by guide and weekday
SELECT
    h.nom,
    h.prenom,
    j.jour_semaine,
    COUNT(v.ID_visiteur) AS nb_visiteurs_guides
FROM Visiteurs v
JOIN Billets b
    ON b.ID_billet = v.ID_billet
JOIN Jour j
    ON j.ID_jour = b.ID_jour
JOIN Guides g
    ON g.ID_guide = b.ID_guide
JOIN Employes e
    ON e.ID_employe = g.ID_guide
JOIN Humain h
    ON h.ID_humain = e.ID_humain
GROUP BY h.nom, h.prenom, j.ID_jour, j.jour_semaine
ORDER BY nb_visiteurs_guides DESC, j.ID_jour ASC, h.nom ASC;
