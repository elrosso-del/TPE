<?php
require_once './libs/smarty-3.1.39/libs/Smarty.class.php';

class UserView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function showRegisterForm(){
        $this->smarty->display('./templates/register.tpl');
    }

    function displayRegisterError(){
        $this->smarty->display('./templates/registerError.tpl');
    }

    function showHome(){
        header("Location: ".BASE_URL."home");
    }

    function showUserHome($zapatillas){
        $this->smarty->assign('zapatillas', $zapatillas);
        $this->smarty->display('./templates/userHome.tpl');
    }

}