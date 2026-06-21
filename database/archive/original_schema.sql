-- 1. Tables de base
CREATE TABLE Etage (
    ID_etage INT PRIMARY KEY,
    numero_etage INT
);

CREATE TABLE Type_oeuvre (
    ID_type INT PRIMARY KEY,
    nom VARCHAR(50)
);

CREATE TABLE Nationalite (
    ID_nationalite INT PRIMARY KEY,
    nationalite VARCHAR(50)
);

CREATE TABLE Mouvement_Artistique (
    ID_mouvement INT PRIMARY KEY,
    mouvement VARCHAR(50)
);

CREATE TABLE Jour (
    ID_jour INT PRIMARY KEY,
    jour_semaine VARCHAR(10)
);

-- 2. Humain et héritiers
CREATE TABLE Humain (
    ID_humain INT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(254)
);

-- 3. Employés (hérite de Humain)
CREATE TABLE Employes (
    ID_employe INT PRIMARY KEY,
    salaire DECIMAL(10,2),
    ID_humain INT UNIQUE,
    FOREIGN KEY (ID_humain) REFERENCES Humain(ID_humain)
);

-- Employés spécialisés
CREATE TABLE Restaurateur (
    ID_restaurateur INT PRIMARY KEY,
    connaissances TEXT,
    FOREIGN KEY (ID_restaurateur) REFERENCES Employes(ID_employe)
);

CREATE TABLE Concierge (
    ID_concierge INT PRIMARY KEY,
    ID_etage INT,
    FOREIGN KEY (ID_concierge) REFERENCES Employes(ID_employe),
    FOREIGN KEY (ID_etage) REFERENCES Etage(ID_etage)
);

CREATE TABLE Guides (
    ID_guide INT PRIMARY KEY,
    FOREIGN KEY (ID_guide) REFERENCES Employes(ID_employe)
);

-- 4. Langues parlées
CREATE TABLE Langues_Parlees (
    ID_langue INT PRIMARY KEY,
    langue VARCHAR(50)
);

CREATE TABLE Guide_Langue (
    ID_guide INT,
    ID_langue INT,
    PRIMARY KEY (ID_guide, ID_langue),
    FOREIGN KEY (ID_guide) REFERENCES Guides(ID_guide),
    FOREIGN KEY (ID_langue) REFERENCES Langues_Parlees(ID_langue)
);

-- 5. Artistes
CREATE TABLE Artistes (
    ID_artiste INT PRIMARY KEY,
    date_naissance DATE,
    date_deces DATE,
    ID_nationalite INT,
    ID_mouvement INT,
    ID_humain INT,
    FOREIGN KEY (ID_nationalite) REFERENCES Nationalite(ID_nationalite),
    FOREIGN KEY (ID_mouvement) REFERENCES Mouvement_Artistique(ID_mouvement),
    FOREIGN KEY (ID_humain) REFERENCES Humain(ID_humain)
);

-- 6. Salles
CREATE TABLE Salles (
    ID_salle INT PRIMARY KEY,
    nom VARCHAR(40),
    ID_etage INT,
    superficie DECIMAL(10,2),
    FOREIGN KEY (ID_etage) REFERENCES Etage(ID_etage)
);

-- 7. Oeuvres
CREATE TABLE Oeuvres (
    ID_oeuvre INT PRIMARY KEY,
    ID_artiste INT,
    annee_creation INT,
    ID_type INT,
    ID_salle INT,
    Description TEXT,
    FOREIGN KEY (ID_artiste) REFERENCES Artistes(ID_artiste),
    FOREIGN KEY (ID_type) REFERENCES Type_oeuvre(ID_type),
    FOREIGN KEY (ID_salle) REFERENCES Salles(ID_salle)
);

-- 8. Expositions
CREATE TABLE Expositions (
    ID_exposition INT PRIMARY KEY,
    nom VARCHAR(100),
    date_debut DATE,
    date_fin DATE,
    ID_salle INT,
    Description TEXT,
    FOREIGN KEY (ID_salle) REFERENCES Salles(ID_salle)
);

CREATE TABLE Oeuvre_Exposition (
    ID_oeuvre INT,
    ID_exposition INT,
    PRIMARY KEY (ID_oeuvre, ID_exposition),
    FOREIGN KEY (ID_oeuvre) REFERENCES Oeuvres(ID_oeuvre),
    FOREIGN KEY (ID_exposition) REFERENCES Expositions(ID_exposition)
);

-- 9. Restaurations
CREATE TABLE Type_Intervention (
    ID_type_intervention INT PRIMARY KEY,
    type_intervention VARCHAR(100)
);

CREATE TABLE Restaurations (
    ID_restauration INT PRIMARY KEY,
    ID_oeuvre INT,
    date_restauration DATE,
    ID_type_intervention INT,
    ID_restaurateur INT,
    FOREIGN KEY (ID_oeuvre) REFERENCES Oeuvres(ID_oeuvre),
    FOREIGN KEY (ID_type_intervention) REFERENCES Type_Intervention(ID_type_intervention),
    FOREIGN KEY (ID_restaurateur) REFERENCES Restaurateur(ID_restaurateur)
);

-- 10. Visiteurs et billets
CREATE TABLE Billets (
    ID_billet INT PRIMARY KEY,
    visite_guide BOOLEAN,
    ID_jour INT,
    ID_guide INT,
    FOREIGN KEY (ID_jour) REFERENCES Jour(ID_jour),
    FOREIGN KEY (ID_guide) REFERENCES Guides(ID_guide)
);

CREATE TABLE Visiteurs (
    ID_visiteur INT PRIMARY KEY,
    code_postal INT,
    ID_billet INT,
    ID_humain INT,
    FOREIGN KEY (ID_billet) REFERENCES Billets(ID_billet),
    FOREIGN KEY (ID_humain) REFERENCES Humain(ID_humain)
);
