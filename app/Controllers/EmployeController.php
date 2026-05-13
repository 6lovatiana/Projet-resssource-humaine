<?php
namespace App\Controllers;

class EmployeController extends BaseController
{
    public function dashboard()
    {
        return view('employe/dashboard');
    }

    public function liste()
    {
        return view('employe/demandes');
    }
}