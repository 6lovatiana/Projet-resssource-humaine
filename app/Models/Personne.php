<?php

namespace App\Models;

use CodeIgniter\Model;

class Personne extends Model{

    public function ObtenirNom(){
        return "Jean Pierre";
    }

}