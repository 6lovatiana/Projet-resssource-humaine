CREATE TABLE departements(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    description TEXT 
);

CREATE TABLE types_conge(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    libelle TEXT NOT NULL,
    jours_annuels INTEGER NOT NULL,
    deductible BOOLEAN NOT NULL
);

CREATE TABLE employes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    prenom TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    departement_id INTEGER,
    date_embauche DATE NOT NULL,
    actif BOOLEAN,
    FOREIGN KEY (departement_id) REFERENCES departements(id)
);

CREATE TABLE soldes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employe_id INTEGER,
    type_conge_id INTEGER,
    annee INTEGER NOT NULL,
    jours_attribues INTEGER NOT NULL,
    jours_pris INTEGER NOT NULL,
    FOREIGN KEY (employe_id) REFERENCES employes(id),
    FOREIGN KEY (type_conge_id) REFERENCES types_conge(id)
);

CREATE TABLE conges(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employe_id INTEGER,
    type_conge_id INTEGER,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    nb_jours INTEGER NOT NULL,
    motif TEXT,
    statut TEXT NOT NULL,
    commentaire_rh TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    traite_par TEXT,
    FOREIGN KEY (employe_id) REFERENCES employes(id),
    FOREIGN KEY (type_conge_id) REFERENCES types_conge(id)
);
