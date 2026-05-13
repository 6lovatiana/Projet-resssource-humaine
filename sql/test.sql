-- 1. Insertion d'un département (nécessaire pour l'employé)
INSERT INTO departements (nom, description) 
VALUES ('Informatique', 'Département technique et développement');

-- 2. Insertion d'un type de congé (utile pour tester les soldes plus tard)
INSERT INTO types_conge (libelle, jours_annuels, deductible) 
VALUES ('Congés Payés', 25, 1);

-- 3. Insertion des utilisateurs (Admin, RH, Employé)
-- Note : Les mots de passe sont en clair ici, en production ils devraient être hachés.

-- L'ADMIN
INSERT INTO employes (nom, prenom, email, password, role, departement_id, date_embauche, actif)
VALUES ('Dupont', 'Jean', 'admin@entreprise.com', 'admin123', 'admin', 1, '2023-01-01', 1);

-- LE RH
INSERT INTO employes (nom, prenom, email, password, role, departement_id, date_embauche, actif)
VALUES ('Martin', 'Sophie', 'rh@entreprise.com', 'rh456', 'rh', 1, '2023-02-15', 1);

-- L'EMPLOYÉ
INSERT INTO employes (nom, prenom, email, password, role, departement_id, date_embauche, actif)
VALUES ('Durand', 'Lucas', 'lucas.durand@entreprise.com', 'user789', 'employe', 1, '2023-06-01', 1);

-- 4. Initialisation d'un solde pour l'employé (optionnel mais recommandé)
INSERT INTO soldes (employe_id, type_conge_id, annee, jours_attribues, jours_pris)
VALUES (3, 1, 2024, 25, 0);