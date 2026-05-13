<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Login::index');
$routes->post('/login', 'AuthController::authenticate');

$routes->group('employe', function ($routes) {
    $routes->get('dashboard', 'EmployeController::dashboard');
});

$routes->group('rh', function ($routes) {
    $routes->get('dashboard', 'RHController::dashboard');
});

$routes->group('admin', function ($routes) {
    $routes->get('dashboard', 'AdminController::dashboard');
});