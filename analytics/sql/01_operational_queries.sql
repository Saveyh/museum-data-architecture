-- 1. Language coverage for guided tours
SELECT
    lp.langue,
    COUNT(gl.ID_guide) AS nb_guides_parlant_langue
FROM Langues_Parlees lp
LEFT JOIN Guide_Langue gl
    ON gl.ID_langue = lp.ID_langue
GROUP BY lp.ID_langue, lp.langue
ORDER BY nb_guides_parlant_langue DESC, lp.langue ASC;

-- 2. Occupancy density by room
SELECT
    s.ID_salle,
    s.nom,
    s.superficie,
    COUNT(o.ID_oeuvre) AS nb_oeuvres,
    ROUND(COUNT(o.ID_oeuvre) / NULLIF(s.superficie, 0), 4) AS densite_oeuvres_m2,
    CASE
        WHEN COUNT(o.ID_oeuvre) / NULLIF(s.superficie, 0) >= 0.0500 THEN 'Haute densite'
        WHEN COUNT(o.ID_oeuvre) / NULLIF(s.superficie, 0) >= 0.0300 THEN 'Densite moderee'
        ELSE 'Densite faible'
    END AS niveau_occupation
FROM Salles s
LEFT JOIN Oeuvres o
    ON o.ID_salle = s.ID_salle
GROUP BY s.ID_salle, s.nom, s.superficie
ORDER BY densite_oeuvres_m2 DESC, nb_oeuvres DESC;

-- 3. Exhibition program and number of artworks displayed
SELECT
    e.ID_exposition,
    e.nom,
    e.date_debut,
    e.date_fin,
    DATEDIFF(e.date_fin, e.date_debut) + 1 AS duree_jours,
    COUNT(DISTINCT oe.ID_oeuvre) AS nb_oeuvres_exposees,
    s.nom AS salle_principale
FROM Expositions e
LEFT JOIN Oeuvre_Exposition oe
    ON oe.ID_exposition = e.ID_exposition
LEFT JOIN Salles s
    ON s.ID_salle = e.ID_salle
GROUP BY
    e.ID_exposition,
    e.nom,
    e.date_debut,
    e.date_fin,
    s.nom
ORDER BY e.date_debut ASC;

-- 4. Employee role matrix powered by the portfolio view
SELECT
    ID_employe,
    nom,
    prenom,
    role,
    salaire,
    langues_parlees,
    etage_attribue,
    expertise_restauration
FROM vue_employes_roles
ORDER BY role ASC, nom ASC, prenom ASC;

-- 5. Restoration activity by intervention type
SELECT
    ti.type_intervention,
    COUNT(*) AS nb_restaurations,
    MIN(r.date_restauration) AS premiere_restauration,
    MAX(r.date_restauration) AS derniere_restauration
FROM Restaurations r
JOIN Type_Intervention ti
    ON ti.ID_type_intervention = r.ID_type_intervention
GROUP BY ti.ID_type_intervention, ti.type_intervention
ORDER BY nb_restaurations DESC, ti.type_intervention ASC;
