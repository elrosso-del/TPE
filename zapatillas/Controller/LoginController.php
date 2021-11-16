<?php
require_once('./Model/LoginModel.php');
require_once('./View/LoginView.php');
require_once('./Helpers/AuthHelpers.php');

class LoginController{

    private $view;
    private $model;
    private $helper;

    function __construct(){
        $this->view = new LoginView();
        $this->model = new LoginModel();
        $this->helper= new AuthHelpers();
    }

    function login(){
        $this->view->showLogin();
    }

    function logout(){
        session_start();
        session_destroy();
        $this->view->showLogin("Te deslogueaste");
    }

    function verify(){
        if (!empty($_POST['email']) && !empty($_POST['password'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];
            $user = $this->model->getUser($email);
            if(!empty($user) && password_verify($password, $user->password)){
                session_start();
                $_SESSION['email'] = $email;
                $this->view->showUserHome();
            }
            else{
                $this->view->showLogin("Acceso denegado");
            }
        }
    }
}