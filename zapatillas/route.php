<?php
require_once 'Controller/ZapasController.php';
require_once 'Controller/UserController.php';


define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');
define('login','//'.$_SERVER['SERVER_NAME'].':'.$_SERVER['SERVER_PORT'].dirname($_SERVER['PHP_SELF']).'/login');
define('logout','//'.$_SERVER['SERVER_NAME'].':'.$_SERVER['SERVER_PORT'].dirname($_SERVER['PHP_SELF']).'/logout');

if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'home';
}

$params = explode('/', $action);

$zapasController = new ZapasController();
$userController = new userController();

switch($params[0]){
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
        $userController->login(); 
        break;
    case 'register':
        $userController->showRegisterForm();
        break;
    case 'registerUser':
        $userController->registerUser($_POST['email'], $_POST['password']);
        break;
    case 'Logout': 
        $userController->logout(); 
        break;
    case 'verify': 
        $userController->verifyLogin(); 
        break;
    case 'createZapatilla': 
        $zapasController->createZapatilla($params[1],$params[2],$params[3],$params[4],$params[5],$params[6],$params[7]);
        break;
    case 'deleteZapatilla': 
        $zapasController->deleteZapatilla($params[1]); 
        break;
    /*case 'updateZapatilla': 
        $zapasController->updateZapatilla($params[1]); 
        break;*/
    default: 
        echo('404 Page not found'); 
        break;
}