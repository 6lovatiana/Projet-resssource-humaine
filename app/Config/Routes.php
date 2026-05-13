<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Login::index');

$routes->group('employe', function ($routes) {
    
});

$routes->group('rh', function ($routes) {
    
});

$routes->group('admin', function ($routes) {
    
});