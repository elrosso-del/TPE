<?php

class LoginModel{

    private $db;

    function __construct(){
        $this->db= new PDO('mysql:host=localhost;'.'dbname=db_tpe;  charset=utf8', 'root', '');
    }

    function getUser($email){
        $sentencia = $this->db->prepare("SELECT * FROM usuarios WHERE email=?");
        $sentencia->execute([$email]);
        $user = $sentencia->fetch(PDO::FETCH_OBJ);
        return $user;
    }
}