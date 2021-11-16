<?php
require_once './libs/smarty-3.1.39/libs/Smarty.class.php';

class LoginView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
        
    }

    function showLogin($error=""){
        $this->smarty->assign('BASE_URL' , BASE_URL);
        $this->smarty->assign('error', $error);  
        $this->smarty->display('./templates/login.tpl');
    }

    function showUserHome(){
        header("Location: ".BASE_URL."userhome");
    }   
    function showHome(){
        header("Location: ".BASE_URL."home");
    }
}