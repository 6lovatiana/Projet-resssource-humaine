<?php

namespace App\Controllers;

use App\Models\EmployeModel;

class AuthController extends BaseController
{

    public function authenticate(){

        $session = session();    

        // Recuperation des données du formulaire
        $data = $this->request->getPost();
        $email = $data['email'];
        $password = $data['password'];

        // Initialisation du modèle EmployeModel
        $employeModel = new EmployeModel();

        // Validation des données
        $employe = $employeModel->where('email', $email)->first();

        if ($employe) {
            // Vérification du mot de passe
            //if (password_verify($password, $employe['password'])) {
            if($password === $employe['password']){
                $session->set('id', $employe['id']);
                $session->set('nom', $employe['nom']);
                $session->set('prenom', $employe['prenom']);
                $session->set('role', $employe['role']);

                if ($session->get('role') === 'employe') {
                    return redirect()->to('/employe/dashboard');
                } elseif ($session->get('role') === 'rh') {
                    return redirect()->to('/rh/dashboard');
                } elseif ($session->get('role') === 'admin') {
                    return redirect()->to('/admin/dashboard');
                }

            } else {
                $session->setFlashdata('error', $employeModel->errors());
                return redirect()->to('/');
            }
        }else{
            $session->setFlashdata('error', $employeModel->errors());
            return redirect()->to('/');
        }

    }
}