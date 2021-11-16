<?php
require_once 'Controller/ZapasController.php';
require_once 'Controller/LoginController.php';
require_once 'Controller/UserController.php';


define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'home';
}

$params = explode('/', $action);

$zapasController = new ZapasController();
$loginController = new LoginController();
$userController = new UserController();

switch($params[0]){
    case 'userhome':
        $userController->showUserHome();
        break;
    case 'home':
        $zapasController->showHome();
        break;
    case 'zapaDetail':
        $zapasController->showDetails($params[1]);
        break;
    case 'genero':
        $zapasController->showByGender($params[1]);
        break;
    case 'deporte':
        $zapasController->showDeporte($params[1]);
        break;
    case 'login': 
        $loginController->login(); 
        break;
    case 'register':
        $userController->showRegisterForm();
        break;
    case 'registerUser':
        $userController->registerUser($_POST['email'], $_POST['password']);
        break;
    case 'logout': 
        $loginController->logout(); 
        break;
    case 'verify': 
        $loginController->verify(); 
        break;
    case 'createZapa': 
        $zapasController->createZapa($_POST['nombre'], $_POST['descripcion'], $_POST['img'], $_POST['deporte'], $_POST['precio'], $_POST['genero'], $_POST['marca']);
        break;
    case 'deleteZapa': 
        $zapasController->deleteZapa($params[1]); 
        break;
    case 'updateZapa': 
        $zapasController->updateZapa($params[1]); 
        break;
    default: 
        echo('404 Page not found'); 
        break;
}