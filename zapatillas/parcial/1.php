<?php
function cambiarClase($clase, $id){
    $sentencia = $this->db->prepare("UPDATE pasaje SET under = ? WHERE id=?");
    $sentencia->execute(array($clase, $id));
}
//controller
function getVuelosSinPrimerClase(){
    $pasajes = $this->model->getPasajes();
    $vuelos = $this->model->getVuelos();
    for($i = 0, $i < )


}
function deleteVuelosSinPrimeraClase($id){
    $this->model->deleteVuelosSinPrimeraClase($id);
}
//model
function getVuelos(){
    $sentencia = $this->db->prepare("SELECT * FROM vuelos");
    $sentencia->execute();
    $vuelos = $sentencia->fetchAll(PDO::FETCH_OBJ);
    return $vuelos;
}
function getPasajes(){
    $sentencia = $this->db->prepare("SELECT * FROM pasajes");
    $sentencia->execute();
    $pasajes = $sentencia->fetchAll(PDO::FETCH_OBJ);
    return $pasajes;
}
function deteleVuelosSinPrimeraClase($id){
    $sentencia = $this->db->prepare("DELETE FROM vuelo WHERE id=?");
    $sentencia->execute(array($id));
}