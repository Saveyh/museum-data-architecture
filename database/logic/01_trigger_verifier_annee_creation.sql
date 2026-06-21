DROP TRIGGER IF EXISTS verifier_annee_creation;

DELIMITER //

CREATE TRIGGER verifier_annee_creation
BEFORE INSERT ON Oeuvres
FOR EACH ROW
BEGIN
    IF NEW.annee_creation > YEAR(CURDATE()) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Erreur : l''annee de creation ne peut pas etre dans le futur.';
    END IF;
END//

DELIMITER ;
