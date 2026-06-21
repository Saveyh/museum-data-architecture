
-- Requete 1
SELECT 
    lp.langue,
    COUNT(gl.ID_guide) AS nb_guides_parlant_langue
FROM 
    Langues_Parlees lp
JOIN 
    Guide_Langue gl ON lp.ID_langue = gl.ID_langue
GROUP BY 
    lp.langue
ORDER BY 
    nb_guides_parlant_langue DESC;


-- Requete 2
SELECT 
    s.ID_salle,
    s.nom,
    s.superficie,
    COUNT(o.ID_oeuvre) AS nb_oeuvres,
    ROUND(COUNT(o.ID_oeuvre) / s.superficie, 2) AS densite_oeuvres
FROM 
    Salles s
LEFT JOIN 
    Oeuvres o ON s.ID_salle = o.ID_salle
GROUP BY 
    s.ID_salle, s.nom, s.superficie
ORDER BY 
    nb_oeuvres DESC;



-- Requete 3 
SELECT 
    e.ID_exposition,
    e.nom,
    MIN(e.date_debut) AS date_debut_expo,
    MAX(e.date_fin) AS date_fin_expo
FROM 
    Expositions e
JOIN 
    Oeuvre_Exposition oe ON e.ID_exposition = oe.ID_exposition
JOIN 
    Oeuvres o ON oe.ID_oeuvre = o.ID_oeuvre
JOIN 
    Salles s ON o.ID_salle = s.ID_salle
GROUP BY 
    e.ID_exposition, e.nom
ORDER BY 
    e.date_debut;


-- Requete 4
DROP TRIGGER IF EXISTS verifier_annee_creation;

DELIMITER //

CREATE TRIGGER verifier_annee_creation
BEFORE INSERT ON Oeuvres
FOR EACH ROW
BEGIN
    IF NEW.annee_creation > YEAR(CURDATE()) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "Erreur : L'année de création ne peut pas être dans le futur.";
    END IF;
END;
//

DELIMITER ;


-- Requete 5
CREATE VIEW vue_employes_roles AS
SELECT 
    e.ID_employe,
    e.salaire,
    CASE 
        WHEN g.ID_guide IS NOT NULL THEN 'Guide'
        WHEN c.ID_concierge IS NOT NULL THEN 'Concierge'
        WHEN r.ID_restaurateur IS NOT NULL THEN 'Restaurateur'
        ELSE 'Employé standard'
    END AS role
FROM Employes e
JOIN Humain h ON e.ID_humain = h.ID_humain
LEFT JOIN Guides g ON g.ID_guide = e.ID_employe
LEFT JOIN Concierge c ON c.ID_concierge = e.ID_employe
LEFT JOIN Restaurateur r ON r.ID_restaurateur = e.ID_employe;


-- Requete 6
SELECT 
    T.type_intervention,
    COUNT(*) AS nb_restaurations,
    MIN(R.date_restauration) AS premiere_restauration,
    MAX(R.date_restauration) AS derniere_restauration
FROM 
    Restaurations R
JOIN 
    Type_Intervention T ON R.ID_type_intervention = T.ID_type_intervention
GROUP BY 
    T.type_intervention
ORDER BY 
    nb_restaurations DESC;

