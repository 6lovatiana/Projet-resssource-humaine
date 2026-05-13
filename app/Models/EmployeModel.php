<?php
namespace App\Models;

use CodeIgniter\Model;


class EmployeModel extends Model
{
    protected $table = 'employes';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'nom', 
        'prenom',
        'email',
        'password',
        'role', 
        'departement_id',
        'date_embauche',
        'actif'
    ];

    protected $validationRules = [
        'email'          => 'required|valid_email|is_unique[employes.email]',
        'mot_de_passe'   => 'required|min_length[6]'
    ];

    protected $validationMessages = [
        'email' => [
            'required' => 'L\'email est requis.',
            'valid_email' => 'L\'email doit être valide.',
            'is_unique' => 'Cet email est déjà utilisé.'
        ],
        'mot_de_passe' => [
            'required' => 'Le mot de passe est requis.',
            'min_length' => 'Le mot de passe doit comporter au moins 6 caractères.'
        ]
    ];
}