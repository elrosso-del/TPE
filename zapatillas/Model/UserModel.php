<?php
class UserModel{

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

    function registerUserInDb($email, $passwordHasheada){
        $sentencia = $this->db->prepare("INSERT INTO usuarios (email, password) VALUES (?,?)");
        $sentencia->execute(array($email, $passwordHasheada));
    }
    
    function getZapas(){
        $sentencia = $this->db->prepare("SELECT * FROM zapatillas");
        $sentencia->execute();
        $zapatillas = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $zapatillas;
    }
}