<?php
require_once './libs/smarty-3.1.39/libs/Smarty.class.php';

class UserView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function showTablaUsuario($usuarios, $logeado){
        $this->smarty->assign('BASE_URL' , BASE_URL);
        $this->smarty->assign('usuarios', $usuarios);
        $this->smarty->assign('logeado',$logeado);
        $this->smarty->display('./templates/tablaUsuarios.tpl');
    }

    function showLogin($error=""){
        $this->smarty->assign('BASE_URL' , BASE_URL);
        $this->smarty->assign('error', $error);  
        $this->smarty->display('./templates/login.tpl');
    }

    function showHome(){
        header("Location: ".BASE_URL."home");
    }

    function showRegisterForm(){
        $this->smarty->display('./templates/register.tpl');
    }

    function displayRegisterError(){
        $this->smarty->display('./templates/registerError.tpl');
    }

}