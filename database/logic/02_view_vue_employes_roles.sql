DROP VIEW IF EXISTS vue_employes_roles;

CREATE VIEW vue_employes_roles AS
SELECT
    e.ID_employe,
    h.nom,
    h.prenom,
    h.email,
    e.salaire,
    CASE
        WHEN g.ID_guide IS NOT NULL THEN 'Guide'
        WHEN c.ID_concierge IS NOT NULL THEN 'Concierge'
        WHEN r.ID_restaurateur IS NOT NULL THEN 'Restaurateur'
        ELSE 'Employe standard'
    END AS role,
    guide_langues.langues_parlees,
    et.numero_etage AS etage_attribue,
    r.connaissances AS expertise_restauration
FROM Employes e
JOIN Humain h
    ON h.ID_humain = e.ID_humain
LEFT JOIN Guides g
    ON g.ID_guide = e.ID_employe
LEFT JOIN (
    SELECT
        gl.ID_guide,
        GROUP_CONCAT(lp.langue ORDER BY lp.langue SEPARATOR ', ') AS langues_parlees
    FROM Guide_Langue gl
    JOIN Langues_Parlees lp
        ON lp.ID_langue = gl.ID_langue
    GROUP BY gl.ID_guide
) guide_langues
    ON guide_langues.ID_guide = g.ID_guide
LEFT JOIN Concierge c
    ON c.ID_concierge = e.ID_employe
LEFT JOIN Etage et
    ON et.ID_etage = c.ID_etage
LEFT JOIN Restaurateur r
    ON r.ID_restaurateur = e.ID_employe;
