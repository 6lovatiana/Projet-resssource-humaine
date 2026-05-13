<?php 

namespace App\Models;

use CodeIgniter\Model;

class CongeModel extends Model
{
    protected $table = 'conges';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id', 
        'employe_id', 
        'type_conge_id', 
        'annee', 
        'jours_attribues', 
        'jours_pris'
    ];

}