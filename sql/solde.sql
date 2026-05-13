-- On vide les anciens soldes de test
DELETE FROM soldes;

-- Solde Annuel : 30 attribués, 12 pris (Reste 18)
INSERT INTO soldes (employe_id, type_conge_id, annee, jours_attribues, jours_pris)
VALUES (3, 1, 2026, 30, 12);

-- Solde Maladie : 10 attribués, 2 pris (Reste 8)
INSERT INTO soldes (employe_id, type_conge_id, annee, jours_attribues, jours_pris)
VALUES (3, 2, 2026, 10, 2);

-- Solde Spécial : 5 attribués, 4 pris (Reste 1)
INSERT INTO soldes (employe_id, type_conge_id, annee, jours_attribues, jours_pris)
VALUES (3, 3, 2026, 5, 4);