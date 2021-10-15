<?php
class UserModel{

    private $db;
    function __construct(){
        $this->db= new PDO('mysql:host=localhost;'.'dbname=db_tpe;  charset=utf8', 'root', '');
     }

  /*  function getUsuarios(){
        $sentencia=$this->db->prepare("SELECT * FROM usuarios");
        $sentencia->execute();
        return $sentencia->fetchAll(PDO::FETCH_OBJ);
    }*/

    function getUser($email){
        $sentencia = $this->db->prepare("SELECT * FROM usuarios WHERE email=?");
        $sentencia->execute([$email]);
        $user = $sentencia->fetch(PDO::FETCH_OBJ);
        return $user;
    }

    /*function crearUsuario($mail, $password, $admin){
        $sentencia = $this->db->prepare("INSERT INTO usuarios (email, password, administrador) VALUES (?,?,?)");
        $sentencia->execute(array($mail, $password, $admin));
    }*/
    
    function borrarUsuario($idUsuario){
        $sentencia = $this->db->prepare("DELETE FROM usuarios WHERE id_usuario=?");
        $sentencia->execute(array($idUsuario));
    }

    function registerUserInDb($email, $passwordHasheada){
        $sentencia = $this->db->prepare("INSERT INTO usuarios (email, password) VALUES (?,?)");
        $sentencia->execute(array($email, $passwordHasheada));
    }
    
}