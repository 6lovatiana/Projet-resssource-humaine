<?php

namespace App\Controllers;


class Home extends BaseController
{
    public function index(): string
    {
        return view('welcome_message');
    }

    public function test(){

        $personne = new \App\Models\Personne();
       
        $data['test'] = "Premier";

        return view('test',$data);
    }
}
