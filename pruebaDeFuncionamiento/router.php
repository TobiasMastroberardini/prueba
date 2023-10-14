<?php
require_once 'app/controller/LoginController.php';
require_once 'app/controller/auth.controller.php';
require_once 'app/controller/page.controller.php';
define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

$action = 'inicio';
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
};

$params = explode('/', $action);

switch ($params[0]) {
    case 'registro':
        $controller = new authController();
        $controller->MostrarRegistro();
        break;
    case 'registrar':
        $controller = new authController();
        $controller->registrar();
        break;
    case 'inicio':
        $controller = new pageController();
        $controller->mostrarInicio();
        break;
    case 'miPerfil':
        $controller = new pageController();
        $controller->mostrarMiPerfil();
        break;
    case 'verSuscripciones':
        $controller = new pageController();
        $controller->mostrarVerSuscripciones();
        break;
    case 'suscribirse':
        $controller = new pageController();
        $controller->MostrarSuscribirse();
        break;
    case 'login':
        $controller = new LoginController();
        $controller->showLogin();
        break;
    default;
        echo 'erro404';
}
