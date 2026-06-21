INSERT INTO Etage (ID_etage, numero_etage) VALUES
(1,0),
(2,1),
(3,2),
(4,3),
(5,-1);

INSERT INTO Type_oeuvre (ID_type, nom) VALUES
(1,'Peinture'),
(2,'Sculpture'),
(3,'Gravure'),
(4, 'Huile sur toile');

INSERT INTO Nationalite (ID_nationalite, nationalite) VALUES
(1, 'Française'),
(2, 'Italienne'),
(3, 'Espagnole'),
(4, 'Allemande'),
(5, 'Japonaise'),
(6, 'Américaine'),
(7, 'Anglaise'),
(8, 'Portugaise'),
(9, 'Chinoise'),
(10, 'Russe'),
(11, 'Indienne'),
(12, 'Brésilienne'),
(13, 'Mexicaine'),
(14, 'Suédoise'),
(15, 'Danoise'),
(16, 'Norvégienne'),
(17, 'Polonaise'),
(18, 'Hollandaise'),
(19, 'Belge'),
(20, 'Suisse'),
(21, 'Autrichienne'),
(22, 'Finlandaise'),
(23, 'Irlandaise'),
(24, 'Grecque'),
(25, 'Turque'),
(26, 'Argentine'),
(27, 'Chilienne'),
(28, 'Australienne'),
(29, 'Saoudienne'),
(30, 'Marocaine'),
(31, 'Croate'),
(32, 'Albanaise'),
(33, 'Coréenne'),
(34, 'Algérienne'),
(35, 'Canadienne');

INSERT INTO Mouvement_Artistique (ID_mouvement, mouvement) VALUES
(1, 'Renaissance'),
(2, 'Baroque'),
(3, 'Rococo'),
(4, 'Néoclassicisme'),
(5, 'Romantisme'),
(6, 'Impressionnisme'),
(7, 'Post-impressionnisme'),
(8, 'Cubisme'),
(9, 'Fauvisme'),
(10, 'Surréalisme'),
(11, 'Expressionnisme'),
(12, 'Art abstrait'),
(13, 'Art contemporain'),
(14, 'Classicisme'),
(15, 'Art Nouveau'),
(16, 'Dadaïsme'),
(17, 'Minimalisme');

INSERT INTO Jour (ID_jour, jour_semaine) VALUES
(1, 'Lundi'),
(2, 'Mardi'),
(3, 'Mercredi'),
(4, 'Jeudi'),
(5, 'Vendredi'),
(6, 'Samedi'),
(7, 'Dimanche');

INSERT INTO Humain (ID_humain, nom, prenom, email) VALUES
(1, 'Dupont', 'Jean', 'jean.dupont@gmail.com'),
(2, 'Martin', 'Sophie', 'sophie.martin@gmail.com'),
(3, 'Bernard', 'Pierre', 'pierre.bernard@hotmail.com'),
(4, 'Lemoine', 'Claire', 'claire.lemoine@hotmail.com'),
(5, 'Lemoine', 'Antoine', 'antoine.lemoine@gmail.com'),
(6, 'Durand', 'Isabelle', 'isabelle.durand@hotmail.com'),
(7, 'Garnier', 'Luc', 'luc.garnier@outlook.com'),
(8, 'Pires', 'Paula', 'paula.pires@outlook.com'),
(9, 'Faure', 'Marc', 'marc.faure@icloud.com'),
(10, 'Leclerc', 'Camille', 'camille.leclerc@icloud.com'),
(11, 'Benoit', 'Thomas', 'thomas.benoit@gmail.com'),
(12, 'Robert', 'Alice', 'alice.robert@yahoo.com'),
(13, 'Moreau', 'Lucie', 'lucie.moreau@hotmail.com'),
(14, 'Fourier', 'Olivier', 'olivier.fourier@yahoo.com'),
(15, 'Lemoine', 'Jacques', 'jacques.lemoine@gmail.com'),
(16, 'Girard', 'Valérie', 'valerie.girard@gmail.com'),
(17, 'Roussel', 'Emilie', 'emilie.roussel@gmail.com'),
(18, 'Legrand', 'David', 'david.legrand@yahoo.com'),
(19, 'Sauvage', 'Léna', 'lena.sauvage@hotmail.com'),
(20, 'Chevalier', 'Marcelle', 'marcelle.chevalier@gmail.com'),
(21, 'Caron', 'Vincent', 'vincent.caron@yahoo.com'),
(22, 'Schneider', 'Sébastien', 'sebastien.schneider@hotmail.com'),
(23, 'Gauthier', 'Nathalie', 'nathalie.gauthier@yahoo.com'),
(24, 'Michel', 'Benoit', 'benoit.michel@outlook.com'),
(25, 'Vasseur', 'Claire', 'claire.vasseur@outlook.com'),
(26, 'Simon', 'Michel', 'michel.simon@outlook.com'),
(27, 'Roche', 'Florence', 'florence.roche@gmail.com'),
(28, 'Mercier', 'Thierry', 'thierry.mercier@gmail.com'),
(29, 'Joly', 'Sarah', 'sarah.joly@hotmail.com'),
(30, 'Giraud', 'Gabriel', 'gabriel.giraud@outlook.com'),
(31, 'Sundelin', 'Martin', 'martin.sundelin@bluewin.com'),
(32, 'Crabbé', 'Raphaël', 'raphael.crabbe@bluewin.com'),
(33, 'Borile', 'Théo', 'theo.borile@outlook.com'),
(34, 'Lardin', 'Paul', 'paul.lardin@yahoo.com'),
(35, 'Lipp', 'Elias', 'elias.lipp@hotmail.com'),
(36, 'Foucou', 'Thomas', 'thomas.foucou@yahoo.com'),
(37, 'Dumarchand', 'Thibeaut', 'thibeaut.dumarchand@yahoo.com'),
(38, 'Petit', 'Louis', 'louis.petit@hotmail.com'),
(39, 'Dubois', 'Maxime', 'maxime.dubois@gmail.com'),
(40, 'Lemaire', 'Augsute', 'auguste.lemaire@hotmail.com'),
(41, 'Boulanger', 'Cindy', 'cindy.boulanger@gmail.com'),
(42, 'Dumas', 'Marie', 'marie.dumas@yahoo.com'),
(43, 'Laporte', 'Camille', 'camille.laporte@outlook.com'),
(44, 'Delagarde', 'Antoine', 'antoine.delagarde@gmail.com'),
(45, 'Monet', 'Claude', NULL),
(46, 'Van Gogh', 'Vincent', NULL),
(47, 'Picasso', 'Pablo', NULL),
(48, 'de Vinci', 'Léonard', NULL),
(49, 'Dali', 'Salvador', NULL),
(50, 'Ange', 'Michel', NULL),
(51, 'Paul Rebens', 'Peter', NULL),
(52, 'de Toulouse-Lautrec', 'Henri', NULL),
(53, 'Kahlo', 'Frida', NULL),
(54, 'Manet', 'Édouard', NULL),
(55, 'Sickert', 'Walter', NULL),
(56, 'David', 'Jacques-Louis', NULL),
(57, 'Warhol', 'Andy', NULL),
(58, 'Degas', 'Edgar', NULL),
(59, 'Gris', 'Juan', NULL),
(60, 'Matteo', 'Rembrandt', NULL),
(61, 'Hugonnet', 'Raphaël', NULL),
(62, 'Matisse', 'Henri', NULL),
(63, 'Rodin', 'Auguste', NULL),
(64, 'Dupuy', 'Inès', 'ines.dupuy@gmail.com'),
(65, 'Germain', 'Axel', 'axel.germain@hotmail.com'),
(66, 'Rolland', 'Jade', 'jade.rolland@outlook.com'),
(67, 'Barbier', 'Nina', 'nina.barbier@yahoo.com'),
(68, 'Lopez', 'Adam', 'adam.lopez@icloud.com'),
(69, 'Guichard', 'Eva', 'eva.guichard@outlook.com'),
(70, 'Marin', 'Victor', 'victor.marin@gmail.com'),
(71, 'Noël', 'Lea', 'lea.noel@orange.fr'),
(72, 'Bertrand', 'Tom', 'tom.bertrand@hotmail.com'),
(73, 'Nguyen', 'Emma', 'emma.nguyen@gmail.com'),
(74, 'Lemoine', 'Lucas', 'lucas.lemoine@wanadoo.fr'),
(75, 'Gros', 'Anna', 'anna.gros@laposte.net'),
(76, 'Langlois', 'Léo', 'leo.langlois@hotmail.com'),
(77, 'Perrin', 'Alice', 'alice.perrin@gmail.com'),
(78, 'Bonnet', 'Nathan', 'nathan.bonnet@orange.fr'),
(79, 'Collet', 'Julie', 'julie.collet@outlook.com'),
(80, 'Pichon', 'Noa', 'noa.pichon@gmail.com'),
(81, 'Millet', 'Zoé', 'zoe.millet@yahoo.com'),
(82, 'Mathieu', 'Malo', 'malo.mathieu@wanadoo.fr'),
(83, 'Lefèvre', 'Lina', 'lina.lefevre@icloud.com'),
(84, 'Marchand', 'Aaron', 'aaron.marchand@free.fr'),
(85, 'Jacquet', 'Lola', 'lola.jacquet@gmail.com'),
(86, 'Gaillard', 'Ethan', 'ethan.gaillard@hotmail.com'),
(87, 'Teixeira', 'Maya', 'maya.teixeira@outlook.fr'),
(88, 'Philippe', 'Enzo', 'enzo.philippe@gmail.com'),
(89, 'Deschamps', 'Eva', 'eva.deschamps@free.fr'),
(90, 'Bouvet', 'Raphaël', 'raphael.bouvet@laposte.net'),
(91, 'Schmitt', 'Manon', 'manon.schmitt@outlook.com'),
(92, 'Rodrigues', 'Hugo', 'hugo.rodrigues@gmail.com'),
(93, 'Hebert', 'Rose', 'rose.hebert@wanadoo.fr'),
(94, 'Brun', 'Sacha', 'sacha.brun@hotmail.com'),
(95, 'Henry', 'Léna', 'lena.henry@icloud.com'),
(96, 'Reynaud', 'Mathis', 'mathis.reynaud@gmail.com'),
(97, 'Delaunay', 'Nora', 'nora.delaunay@hotmail.com'),
(98, 'Valentin', 'Noah', 'noah.valentin@outlook.com'),
(99, 'Maurice', 'Chloé', 'chloe.maurice@orange.fr'),
(100, 'Marty', 'Iris', 'iris.marty@gmail.com'),
(101, 'Ferry', 'Timéo', 'timeo.ferry@icloud.com'),
(102, 'Bertin', 'Léonie', 'leonie.bertin@yahoo.com'),
(103, 'Pasquier', 'Maël', 'mael.pasquier@gmail.com'),
(104, 'Legros', 'Jade', 'jade.legros@laposte.net'),
(105, 'Hamon', 'Lyam', 'lyam.hamon@hotmail.com'),
(106, 'Lemoine', 'Anna', 'anna.lemoine@gmail.com'),
(107, 'Letellier', 'Gabriel', 'gabriel.letellier@orange.fr'),
(108, 'Valette', 'Ambre', 'ambre.valette@outlook.fr'),
(109, 'Baron', 'Nolan', 'nolan.baron@icloud.com'),
(110, 'Delattre', 'Romane', 'romane.delattre@yahoo.com'),
(111, 'Royer', 'Eliott', 'eliott.royer@gmail.com'),
(112, 'Besnard', 'Léa', 'lea.besnard@hotmail.com'),
(113, 'Masson', 'Axelle', 'axelle.masson@wanadoo.fr'),
(114, 'Renault', 'Tom', 'tom.renault@gmail.com'),
(115, 'Coulon', 'Inaya', 'inaya.coulon@orange.fr'),
(116, 'Berger', 'Noé', 'noe.berger@outlook.com'),
(117, 'Pineau', 'Salomé', 'salome.pineau@gmail.com'),
(118, 'Chauvet', 'Loris', 'loris.chauvet@free.fr'),
(119, 'Hubert', 'Charlie', 'charlie.hubert@laposte.net'),
(120, 'Navarro', 'Alya', 'alya.navarro@hotmail.com'),
(121, 'Tessier', 'Valentin', 'valentin.tessier@wanadoo.fr'),
(122, 'Boutin', 'Clara', 'clara.boutin@gmail.com'),
(123, 'Jacques', 'Tao', 'tao.jacques@yahoo.com'),
(124, 'Picard', 'Alix', 'alix.picard@outlook.com'),
(125, 'Loiseau', 'Ilan', 'ilan.loiseau@gmail.com'),
(126, 'Perret', 'Mila', 'mila.perret@icloud.com'),
(127, 'Michaud', 'Lenny', 'lenny.michaud@gmail.com'),
(128, 'Lebon', 'Ana', 'ana.lebon@orange.fr'),
(129, 'Guérin', 'Théo', 'theo.guerin@wanadoo.fr'),
(130, 'Hoarau', 'Naël', 'nael.hoarau@free.fr'),
(131, 'Leblanc', 'Ines', 'ines.leblanc@hotmail.com'),
(132, 'Paris', 'Jules', 'jules.paris@gmail.com'),
(133, 'Delorme', 'Eden', 'eden.delorme@yahoo.com'),
(134, 'Lemoine', 'Noémie', 'noemie.lemoine@outlook.com'),
(135, 'Blondel', 'Yanis', 'yanis.blondel@laposte.net'),
(136, 'Verdier', 'Léna', 'lena.verdier@icloud.com'),
(137, 'Potier', 'Louis', 'louis.potier@gmail.com'),
(138, 'Guillet', 'Nina', 'nina.guillet@hotmail.com');


INSERT INTO Employes (ID_employe, salaire, ID_humain) VALUES
(1, 4200.00, 5), 
(2, 4500.00, 12),
(3, 3800.00, 17),
(4, 4100.00, 3),  
(5, 4000.00, 10), 
(6, 4200.00, 15), 
(7, 3500.00, 25),
(8, 3900.00, 18), 
(9, 4300.00, 22), 
(10, 4400.00, 28), 
(11, 4050.00, 8), 
(12, 3850.00, 14), 
(13, 4950.00, 31),
(14, 4100.00, 9),  
(15, 3800.00, 29);

INSERT INTO Restaurateur (ID_restaurateur, connaissances) VALUES
(1, 'Réparation des toiles déchirées ou de cadres abîmés'),
(2, "Préservation des sculptures de pierre et de bois contre l'humidité"),
(3, 'Nettoyages et protections des peintures anciennes'),
(4, 'Traitement des objets fragiles en verre, porcelaine et céramique pour éviter les dégradations'),
(5, "Nettoyage et protection des œuvres d'art contre les moisissures et l'usure"),
(6, 'Application de vernis protecteurs pour maintenir les couleurs des peintures');

INSERT INTO Concierge (ID_concierge, ID_etage) VALUES
(7, 1),
(8, 2),
(9, 3),
(10, 4),
(11, 5);

INSERT INTO Guides (ID_guide) VALUES
(12),
(13),
(14),
(15);

INSERT INTO Langues_Parlees (ID_langue, langue) VALUES
(1, 'Anglais'),
(2, 'Mandarin'),
(3, 'Hindi'),
(4, 'Espagnol'),
(5, 'Français'),
(6, 'Arabe'),
(7, 'Italien'),
(8, 'Russe'),
(9, 'Portugais'),
(10, 'Coréen'),
(11, 'Polonais'),
(12, 'Allemand'),
(13, 'Japonais'),
(14, 'Suédois');

INSERT INTO Guide_Langue(ID_guide, ID_langue) VALUES
(14, 5),
(15, 12),
(15, 5),
(15, 9),
(12, 4),
(12, 7),
(12, 1),
(14, 1), 
(14, 3), 
(13, 1),  
(13, 14);

INSERT INTO Artistes (
    ID_artiste,
    date_naissance,
    date_deces,
    ID_nationalite,
    ID_mouvement,
    ID_humain
) VALUES
(1, '1840-11-14', '1926-12-05', 1, 6, 45), -- Claude Monet
(2, '1853-03-30', '1890-07-29', 18, 7, 46), -- Vincent Van Gogh
(3, '1881-10-25', '1973-04-08', 3, 8, 47), -- Pablo Picasso
(4, '1452-04-15', '1519-05-02', 2, 1, 48), -- Leonard de Vinci
(5, '1904-05-11', '1989-01-23', 3, 10, 49), -- Salvador Dali
(6, '1475-03-06', '1564-02-18', 2, 1, 50), -- Michel Ange
(7, '1599-06-28', '1660-08-04', 18, 2, 51), -- Peter Paul Rebens
(8, '1887-07-07', '1968-11-28', 1, 9, 52), -- Henri de Toulouse-Lautrec
(9, '1907-07-06', '1954-07-13', 13, 10, 53), -- Frida Kahlo
(10, '1832-12-23', '1883-04-30', 1, 6, 54), -- Edouard Manet
(11, '1866-05-20', '1944-01-23', 7, 7, 55), -- Walter Sickert
(12, '1748-08-30', '1825-12-29', 1, 4, 56), -- Jacques-Louis David
(13, '1928-08-06', '1987-02-22', 6, 13, 57), -- Andy Warhol
(14, '1834-05-30', '1917-04-09', 1, 6, 58), -- Edgar Degas
(15, '1887-03-23', '1927-05-11', 3, 8, 59), -- Juan Gris
(16, '1606-07-15', '1669-10-04', 18, 2, 60), -- Rembrandt
(17, '1483-04-06', '1520-04-06', 2, 1, 61), -- Raphael
(18, '1869-12-31', '1954-11-03', 1, 6, 62), -- Henri Matisse
(19, '1840-11-12', '1917-11-17', 1, 6, 63); -- Auguste Rodin

INSERT INTO Salles (ID_salle, nom, ID_etage, superficie) VALUES
(1, 'Salle 1', 2, 100.0),
(2, 'Salle 2', 3, 120.0),
(3, 'Salle 3', 4, 95.0),
(4, 'Salle 4', 3, 110.0),
(5, 'Salle 5', 5, 105.0);

INSERT INTO Oeuvres (ID_oeuvre, ID_artiste, annee_creation, ID_type, ID_salle, Description) VALUES
(1, 4, 1517, 1, 1, 'La célèbre peinture de la Joconde, réalisée par Léonard de Vinci.'), -- La Joconde, Léonard de Vinci
(2, 19, 1880, 2, 3, 'La sculpture du Penseur réalisée par Auguste Rodin.'), -- Le Penseur, Auguste Rodin
(3, 3, 1935, 3, 5, 'Gravure représentant une scène de la guerre civile espagnole.'), -- La Minotauromachie, Pablo Picasso
(4, 4, 1498, 1, 1, 'La Cène, une peinture murale de Léonard de Vinci.'), -- La Cène, Léonard de Vinci
(5, 5, 1931, 4, 5, 'Peinture surréaliste de Salvador Dalí, intitulée "La Persistance de la mémoire".'), -- La Persistance de la mémoire, Salvador Dali
(6, 6, 1504, 2, 1, 'Sculpture de Michel-Ange, représentant le David en marbre.'), -- David, Michel-Ange
(7, 7, 1618, 4, 2, 'Une peinture baroque de Peter Paul Rubens représentant une scène mythologique.'), -- L'Enlèvement des filles de Leucippe, Peter Paul Rebens
(8, 8, 1891, 3, 3, 'Gravure moderne de Henri Toulouse-Lautrec, représentant une scène de cabaret.'), -- Moulin-Rouge : La Goulue, Henri-Toulouse-Lautrec
(9, 3, 1937, 4, 5, 'Peinture figurative représentant la scène de guerre de Guernica, par Picasso.'), -- Guernica, Pablo Picasso
(10, 1, 1872, 4, 3, 'Port du Havre au lever du soleil'), -- Impression, soleil levant, Claude Monet
(11, 2, 1889, 4, 3, 'Peinture représentant la ville de Arles de nuit, sous un ciel étoilé'), -- La nuit étoilée, Vincent van Gogh
(12, 9, 1939, 1, 1, 'Portrait des deux femmes qui se ressemblent mais dans des habits différents'), -- Les deux Fridas, Frida Kahlo
(13, 10, 1863, 4, 3, 'Un pique-nique en plein air, une femme nue et des hommes habillés, défiant les conventions sociales de l’époque.'), -- Le Déjeuner sur l'herbe, Édouard Manet
(14, 11, 1914, 1, 5, "Un vieil homme fume, la femme regarde ailleurs, ils n'ont rien à se dire"), -- Ennui, Walter Sickert
(15, 12, 1812, 1, 4, 'Peinture représentant Napoléon dans son cabinet de travail.'), -- Napoléon dans son cabinet de travail, Jacques-Louis David
(16, 13, 1962, 1, 5, 'Série d’images répétitives de la célèbre boîte de soupe, incarnant la culture de consommation de masse'), -- Campbell's Soup Cans, Andy Warhol
(17, 14, 1876, 4, 3, 'Peinture réaliste représentant deux figures solitaires dans un café parisien, buvant de l’absinthe.'), -- L'Absinthe, Edgar Degas
(18, 15, 1912, 4, 4, 'Portrait cubiste du célébre artiste espagnol, Pablo Picasso'), -- Portrait de Pablo Picasso, Juan Gris
(19, 16, 1642, 4, 2, 'Peinture représentant un groupe de soldats se préparant à partir en mission'), -- La Ronde de nuit, Rembrandt
(20, 17, 1512, 1, 1, 'Peinture représentant un groupe de savants et philosophes dans un grand espace architectural'), -- L'École d'Athènes, Raphaël
(21, 18, 1909, 4, 4, 'Peinture expressive de cinq danseurs nus formant un cercle sur un fond coloré.'); -- La Danse, Henri Matisse

INSERT INTO Expositions (ID_exposition, nom, date_debut, date_fin, ID_salle, Description) VALUES
(1, 'Exposition de la Renaissance', '2025-06-01', '2025-06-30', 1, 'Une rétrospective des plus grandes œuvres de la Renaissance, incluant des peintures et sculptures de maîtres comme Léonard de Vinci et Michel-Ange.'),
(2, 'Sculptures Modernes', '2025-07-05', '2025-08-10', 2, 'Exposition sur les sculptures modernes, avec des pièces de Rodin et de Dali, parmi d’autres artistes du 20e siècle.'),
(3, 'Peintures Surréalistes', '2025-09-15', '2025-10-15', 3, 'Une collection d’œuvres de peintres surréalistes comme Salvador Dalí et René Magritte.'),
(4, 'Peintures Impressionnistes', '2025-11-01', '2025-11-30', 4, 'Une exposition d’œuvres impressionnistes par Monet, Renoir et d’autres peintres emblématiques du mouvement.'),
(5, 'Art Contemporain en Évolution', '2025-12-01', '2026-01-15', 5, 'Une exposition sur l’évolution de l’art contemporain, des années 1950 à aujourd’hui.');

INSERT INTO Oeuvre_Exposition(ID_oeuvre, ID_exposition) VALUES
(1,1),
(2,2),
(3,3),
(4,1),
(5,3),
(6,1),
(7,1),
(8,4),
(9,3),
(10,4),
(11,4),
(12,3),
(13,5),
(14,5),
(15,2),
(16,5),
(17,4),
(18,3),
(19,5),
(20,1),
(21,3);

INSERT INTO Type_Intervention (ID_type_intervention, type_intervention) VALUES
(1, 'Réparation de toile déchirée'),
(2, 'Nettoyage et conservation des sculptures'),
(3, 'Préservation des peintures anciennes'),
(4, 'Traitement des objets fragiles en céramique'),
(5, 'Application de vernis protecteurs'),
(6, 'Protection contre l’humidité et la moisissure');

INSERT INTO Restaurations (ID_restauration, ID_oeuvre, date_restauration, ID_type_intervention, ID_restaurateur) VALUES
(1, 1, '2025-01-15', 1, 1), 
(2, 2, '2025-02-20', 2, 2), 
(3, 4, '2025-03-10', 3, 3),
(4, 5, '2025-04-05', 5, 4),
(5, 6, '2025-05-10', 2, 5),  
(6, 7, '2025-06-01', 3, 6),  
(7, 8, '2025-07-15', 4, 1), 
(8, 9, '2025-08-25', 1, 2),  
(9, 10, '2025-09-30', 6, 3),  
(10, 11, '2025-10-05', 5, 4),
(11, 12, '2025-11-20', 3, 5),
(12, 13, '2025-12-10', 2, 6),
(13, 14, '2026-01-15', 4, 1),
(14, 15, '2026-02-01', 2, 2);

INSERT INTO Billets (ID_billet, visite_guide, ID_jour, ID_guide) VALUES
-- Lundi (ID_jour = 1)
(1, FALSE, 1, NULL),
(2, TRUE, 1, 12),

-- Mardi (ID_jour = 2)
(3, FALSE, 2, NULL),
(4, TRUE, 2, 13),

-- Mercredi (ID_jour = 3)
(5, FALSE, 3, NULL),
(6, TRUE, 3, 14),

-- Jeudi (ID_jour = 4)
(7, FALSE, 4, NULL),
(8, TRUE, 4, 15),

-- Vendredi (ID_jour = 5)
(9, FALSE, 5, NULL),
(10, TRUE, 5, 12),

-- Samedi (ID_jour = 6)
(11, FALSE, 6, NULL),
(12, TRUE, 6, 13),

-- Dimanche (ID_jour = 7)
(13, FALSE, 7, NULL),
(14, TRUE, 7, 14);


INSERT INTO Visiteurs (ID_visiteur, code_postal, ID_billet, ID_humain) VALUES
(1, 2000, 1, 64),
(2, 2034, 3, 65),
(3, 2035, 5, 66),
(4, 2400, 7, 67),
(5, 2053, 9, 68),
(6, 2300, 11, 69),
(7, 2043, 13, 70),
(8, 2056, 1, 71),
(9, 2037, 3, 72),
(10, 2065, 5, 73),
(11, 2316, 7, 74),
(12, 2072, 9, 75),
(13, 2074, 11, 76),
(14, 2013, 13, 77),
(15, 2054, 1, 78),
(16, 2035, 3, 79),
(17, 2400, 5, 80),
(18, 2000, 7, 81),
(19, 2043, 9, 82),
(20, 2072, 11, 83),
(21, 2316, 13, 84),
(22, 2300, 1, 85),
(23, 2065, 3, 86),
(24, 2034, 5, 87),
(25, 2053, 7, 88),
(26, 2074, 9, 89),
(27, 2072, 11, 90),
(28, 2043, 13, 91),
(29, 2000, 1, 92),
(30, 2012, 3, 93),
(31, 2074, 5, 94),
(32, 2037, 7, 95),
(33, 2054, 9, 96),
(34, 2056, 11, 97),
(35, 2065, 13, 98),
(36, 2035, 1, 99),
(37, 2400, 3, 100),
(38, 2316, 5, 101),
(39, 2043, 7, 102),
(40, 2000, 9, 103),
(41, 2034, 11, 104),
(42, 2072, 13, 105),
(43, 2053, 1, 106),
(44, 2074, 3, 107),
(45, 2300, 5, 108),
(46, 2037, 7, 109),
(47, 2054, 9, 110),
(48, 2065, 11, 111),
(49, 2035, 13, 112),
(50, 2043, 1, 113),
(51, 2072, 3, 114),
(52, 2074, 5, 115),
(53, 2316, 7, 116),
(54, 2056, 9, 117),
(55, 2400, 11, 118),
(56, 2034, 13, 119),
(57, 2000, 1, 120),
(58, 2300, 3, 121),
(59, 2012, 5, 122),
(60, 2072, 7, 123),
(61, 2043, 9, 124),
(62, 2065, 11, 125),
(63, 2037, 13, 126),
(64, 2074, 1, 127),
(65, 2053, 3, 128),
(66, 2035, 5, 129),
(67, 2054, 7, 130),
(68, 2316, 9, 131),
(69, 2400, 11, 132),
(70, 2013, 13, 133),
(71, 2056, 1, 134),
(72, 2000, 3, 135),
(73, 2043, 5, 136),
(74, 2034, 7, 137),
(75, 2072, 9, 138),
(76, 2037, 2, 86),
(77, 2074, 4, 80),
(78, 2053, 6, 66),
(79, 2065, 8, 88),
(80, 2035, 10, 71),
(81, 2300, 12, 65),
(82, 2072, 14, 111),
(83, 2012, 2, 132),
(84, 2054, 4, 69),
(85, 2043, 6, 92),
(86, 2400, 8, 122),
(87, 2000, 10, 74),
(88, 2074, 12, 109),
(89, 2056, 14, 96),
(90, 2316, 2, 80),
(91, 2300, 4, 124),
(92, 2072, 6, 129),
(93, 2013, 8, 131),
(94, 2065, 10, 97),
(95, 2035, 12, 138),
(96, 2053, 14, 104),
(97, 2012, 2, 107),
(98, 2037, 4, 69),
(99, 2400, 6, 97),
(100, 2074, 8, 68);
