<?php

class ZapasModel{

    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_tpe;charset=utf8', 'root', '');
    }

    function getZapas(){
        $sentencia = $this->db->prepare("SELECT * FROM zapatillas");
        $sentencia->execute();
        $zapatillas = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $zapatillas;
    }

    function getMarcas(){
        $sentencia = $this->db->prepare("SELECT * FROM marcas");
        $sentencia->execute();
        $marcas = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $marcas;
    }

    function getZapaById($id){
        $sentencia = $this->db->prepare("SELECT * FROM zapatillas WHERE id=?");
        $sentencia->execute(array($id));
        $zapa = $sentencia->fetch(PDO::FETCH_OBJ);
        return $zapa;
    }

    function getMarca($id){
        $sentencia = $this->db->prepare("SELECT *  FROM marcas WHERE id=?");
        $sentencia->execute(array($id));
        $marca = $sentencia->fetch(PDO::FETCH_OBJ);
        return $marca;
    }

    function getZapasByGender($id){
        $sentencia = $this->db->prepare("SELECT * FROM zapatillas WHERE genero=?");
        $sentencia->execute(array($id));
        $zapasByGender = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $zapasByGender;
    }
    
    function getZapasBySport($id){
        $sentencia = $this->db->prepare("SELECT * FROM zapatillas WHERE deporte=?");
        $sentencia->execute(array($id));
        $zapasBySport = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $zapasBySport;
    }

    function deleteZapatillaFromDB($id){
        $sentencia = $this->db->prepare("DELETE FROM zapatillas WHERE id=?");
        $sentencia->execute(array($id));
    }

    function createZapatilla($nombre, $descripcion, $imagen, $deporte, $precio, $genero, $marca_id){
        $sentencia = $this->db->prepare("INSERT INTO zapatillas (nombre, descripcion, imagen, deporte, precio, genero) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $sentencia->execute(array($nombre, $descripcion, $imagen, $deporte, $precio, $genero, $marca_id));
    }
}