-- Performance-oriented indexes for operational joins and BI workloads

CREATE INDEX idx_oeuvres_salle_type
    ON Oeuvres (ID_salle, ID_type);

CREATE INDEX idx_oeuvres_artiste
    ON Oeuvres (ID_artiste);

CREATE INDEX idx_expositions_dates
    ON Expositions (date_debut, date_fin);

CREATE INDEX idx_oeuvre_exposition_exposition
    ON Oeuvre_Exposition (ID_exposition, ID_oeuvre);

CREATE INDEX idx_restaurations_type_date
    ON Restaurations (ID_type_intervention, date_restauration);

CREATE INDEX idx_restaurations_restaurateur
    ON Restaurations (ID_restaurateur, date_restauration);

CREATE INDEX idx_billets_jour_visite
    ON Billets (ID_jour, visite_guide);

CREATE INDEX idx_visiteurs_code_postal
    ON Visiteurs (code_postal);
