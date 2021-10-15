<?php
require_once './View/UserView.php';
require_once './Model/UserModel.php';
require_once './Helpers/AuthHelpers.php';

class userController {

    private $view;
    private $model;
    private $helper;
    
    function __construct(){

        $this->view = new UserView();
        $this->model = new UserModel();
        $this->helper= new AuthHelpers();
    }
    
    function login(){
        $this->view->showLogin();
    }

    /*function TablaUsuarios($params=null){
        $logeado=$this->helper->checkLoggedIn();
        if($logeado == null || !$logeado->administrador){
            $this->view->showError("No se permite el acceso a estos datos.", $logeado);
        }
        else{
            $usuarios=$this->model->getUser();
            $this->view->showTablaUsuario($usuarios, $logeado);
        }
    }*/

    function MostrarFormularioLogin($params=null){
        $logeado=$this->helper->checkLoggedIn();
        $this->view->showLogin($logeado);
    }

    function logout($params=null){
        session_start();
        session_destroy();
        $logeado=$this->helper->checkLoggedIn();
        $this->view->showHome()($logeado);
    }

    function showRegisterForm(){
        $this->view->showRegisterForm();
    }

    function registerUser($email, $password){
        if(!empty($email) && !empty($password)){
            $passwordHasheada = password_hash($password, PASSWORD_BCRYPT);
            $this->model->registerUserInDb($email, $passwordHasheada);
            $this->view->showHome();
        }
        else{
            $this->view->displayRegisterError();
        }
    }

    function verifyLogin(){
        if (!empty($_POST['email']) && !empty($_POST['password'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];
            $user = $this->model->getUser($email);
            if(!empty($user) && password_verify($password, $user->password)){
                session_start();
                $_SESSION['email'] = $email;
                $this->view->showHome();
            }
            else{
                $this->view->showLogin("Acceso denegado");
            }
        }
    }

}