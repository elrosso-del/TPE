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

    function showUserHome(){
       $this->helper->checkLoggedIn();

       $zapatillas = $this->model->getZapas();
       
       $this->view->showUserHome($zapatillas);
    }

}