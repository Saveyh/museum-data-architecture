-- Museum collection management schema
-- Target dialect: MySQL 8+

CREATE TABLE Etage (
    ID_etage INT PRIMARY KEY,
    numero_etage INT NOT NULL UNIQUE
);

CREATE TABLE Type_oeuvre (
    ID_type INT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Nationalite (
    ID_nationalite INT PRIMARY KEY,
    nationalite VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Mouvement_Artistique (
    ID_mouvement INT PRIMARY KEY,
    mouvement VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Jour (
    ID_jour INT PRIMARY KEY,
    jour_semaine VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE Humain (
    ID_humain INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(254) UNIQUE
);

CREATE TABLE Employes (
    ID_employe INT PRIMARY KEY,
    salaire DECIMAL(10, 2) NOT NULL,
    ID_humain INT NOT NULL UNIQUE,
    CONSTRAINT chk_employe_salaire CHECK (salaire > 0),
    CONSTRAINT fk_employes_humain
        FOREIGN KEY (ID_humain) REFERENCES Humain (ID_humain)
);

CREATE TABLE Restaurateur (
    ID_restaurateur INT PRIMARY KEY,
    connaissances TEXT NOT NULL,
    CONSTRAINT fk_restaurateur_employe
        FOREIGN KEY (ID_restaurateur) REFERENCES Employes (ID_employe)
);

CREATE TABLE Concierge (
    ID_concierge INT PRIMARY KEY,
    ID_etage INT NOT NULL,
    CONSTRAINT fk_concierge_employe
        FOREIGN KEY (ID_concierge) REFERENCES Employes (ID_employe),
    CONSTRAINT fk_concierge_etage
        FOREIGN KEY (ID_etage) REFERENCES Etage (ID_etage)
);

CREATE TABLE Guides (
    ID_guide INT PRIMARY KEY,
    CONSTRAINT fk_guides_employe
        FOREIGN KEY (ID_guide) REFERENCES Employes (ID_employe)
);

CREATE TABLE Langues_Parlees (
    ID_langue INT PRIMARY KEY,
    langue VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Guide_Langue (
    ID_guide INT NOT NULL,
    ID_langue INT NOT NULL,
    PRIMARY KEY (ID_guide, ID_langue),
    CONSTRAINT fk_guide_langue_guide
        FOREIGN KEY (ID_guide) REFERENCES Guides (ID_guide),
    CONSTRAINT fk_guide_langue_langue
        FOREIGN KEY (ID_langue) REFERENCES Langues_Parlees (ID_langue)
);

CREATE TABLE Artistes (
    ID_artiste INT PRIMARY KEY,
    date_naissance DATE NOT NULL,
    date_deces DATE,
    ID_nationalite INT NOT NULL,
    ID_mouvement INT NOT NULL,
    ID_humain INT NOT NULL UNIQUE,
    CONSTRAINT chk_artiste_dates CHECK (
        date_deces IS NULL OR date_deces >= date_naissance
    ),
    CONSTRAINT fk_artiste_nationalite
        FOREIGN KEY (ID_nationalite) REFERENCES Nationalite (ID_nationalite),
    CONSTRAINT fk_artiste_mouvement
        FOREIGN KEY (ID_mouvement) REFERENCES Mouvement_Artistique (ID_mouvement),
    CONSTRAINT fk_artiste_humain
        FOREIGN KEY (ID_humain) REFERENCES Humain (ID_humain)
);

CREATE TABLE Salles (
    ID_salle INT PRIMARY KEY,
    nom VARCHAR(40) NOT NULL,
    ID_etage INT NOT NULL,
    superficie DECIMAL(10, 2) NOT NULL,
    CONSTRAINT chk_salle_superficie CHECK (superficie > 0),
    CONSTRAINT fk_salles_etage
        FOREIGN KEY (ID_etage) REFERENCES Etage (ID_etage)
);

CREATE TABLE Oeuvres (
    ID_oeuvre INT PRIMARY KEY,
    ID_artiste INT NOT NULL,
    annee_creation INT NOT NULL,
    ID_type INT NOT NULL,
    ID_salle INT NOT NULL,
    Description TEXT NOT NULL,
    CONSTRAINT chk_oeuvre_annee CHECK (annee_creation > 0),
    CONSTRAINT fk_oeuvres_artiste
        FOREIGN KEY (ID_artiste) REFERENCES Artistes (ID_artiste),
    CONSTRAINT fk_oeuvres_type
        FOREIGN KEY (ID_type) REFERENCES Type_oeuvre (ID_type),
    CONSTRAINT fk_oeuvres_salle
        FOREIGN KEY (ID_salle) REFERENCES Salles (ID_salle)
);

CREATE TABLE Expositions (
    ID_exposition INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    ID_salle INT NOT NULL,
    Description TEXT NOT NULL,
    CONSTRAINT chk_exposition_dates CHECK (date_fin >= date_debut),
    CONSTRAINT fk_expositions_salle
        FOREIGN KEY (ID_salle) REFERENCES Salles (ID_salle)
);

CREATE TABLE Oeuvre_Exposition (
    ID_oeuvre INT NOT NULL,
    ID_exposition INT NOT NULL,
    PRIMARY KEY (ID_oeuvre, ID_exposition),
    CONSTRAINT fk_oeuvre_exposition_oeuvre
        FOREIGN KEY (ID_oeuvre) REFERENCES Oeuvres (ID_oeuvre),
    CONSTRAINT fk_oeuvre_exposition_exposition
        FOREIGN KEY (ID_exposition) REFERENCES Expositions (ID_exposition)
);

CREATE TABLE Type_Intervention (
    ID_type_intervention INT PRIMARY KEY,
    type_intervention VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Restaurations (
    ID_restauration INT PRIMARY KEY,
    ID_oeuvre INT NOT NULL,
    date_restauration DATE NOT NULL,
    ID_type_intervention INT NOT NULL,
    ID_restaurateur INT NOT NULL,
    CONSTRAINT fk_restaurations_oeuvre
        FOREIGN KEY (ID_oeuvre) REFERENCES Oeuvres (ID_oeuvre),
    CONSTRAINT fk_restaurations_type
        FOREIGN KEY (ID_type_intervention) REFERENCES Type_Intervention (ID_type_intervention),
    CONSTRAINT fk_restaurations_restaurateur
        FOREIGN KEY (ID_restaurateur) REFERENCES Restaurateur (ID_restaurateur)
);

CREATE TABLE Billets (
    ID_billet INT PRIMARY KEY,
    visite_guide BOOLEAN NOT NULL DEFAULT FALSE,
    ID_jour INT NOT NULL,
    ID_guide INT,
    CONSTRAINT chk_billet_guide CHECK (
        (visite_guide = TRUE AND ID_guide IS NOT NULL)
        OR (visite_guide = FALSE AND ID_guide IS NULL)
    ),
    CONSTRAINT fk_billets_jour
        FOREIGN KEY (ID_jour) REFERENCES Jour (ID_jour),
    CONSTRAINT fk_billets_guide
        FOREIGN KEY (ID_guide) REFERENCES Guides (ID_guide)
);

CREATE TABLE Visiteurs (
    ID_visiteur INT PRIMARY KEY,
    code_postal INT NOT NULL,
    ID_billet INT NOT NULL,
    ID_humain INT NOT NULL,
    CONSTRAINT chk_visiteur_code_postal CHECK (code_postal > 0),
    CONSTRAINT fk_visiteurs_billet
        FOREIGN KEY (ID_billet) REFERENCES Billets (ID_billet),
    CONSTRAINT fk_visiteurs_humain
        FOREIGN KEY (ID_humain) REFERENCES Humain (ID_humain)
);
