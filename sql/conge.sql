-- On vide d'abord la table pour repartir sur tes nouvelles valeurs
DELETE FROM types_conge;

-- 1. Congé annuel (Total de 30 jours)
INSERT INTO types_conge (libelle, jours_annuels, deductible) 
VALUES ('Congé annuel', 30, 1);

-- 2. Congé maladie (Total de 10 jours)
INSERT INTO types_conge (libelle, jours_annuels, deductible) 
VALUES ('Congé maladie', 10, 0);

-- 3. Congé spécial (Total de 5 jours)
INSERT INTO types_conge (libelle, jours_annuels, deductible) 
VALUES ('Congé spécial', 5, 0);