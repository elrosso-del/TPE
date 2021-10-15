<?php
require_once './Model/ZapasModel.php';
require_once './View/ZapasView.php';
require_once './Helpers/AuthHelpers.php';

class ZapasController{

    private $model;
    private $view;
    private $authHelpers;

    function __construct(){
        $this->model = new ZapasModel();
        $this->view = new ZapasView();
        $this->authHelpers = new AuthHelpers();
    }

    function showHome(){
        $zapas = $this->model->getZapas();
        $this->view->showZapas($zapas);
    }

    function showDetails($id){
        $zapa = $this->model->getZapaById($id);
        $idMarca = $zapa->marca_id;
        $marca = $this->model->getMarca($idMarca);
        $this->view->showZapa($zapa, $marca);
    }

    function showByGender($id){
        $zapasByGender = $this->model->getZapasByGender($id);
        $this->view->showZapasByGender($zapasByGender);
    }

    function showDeporte($deporte){
        $zapas = $this->model->getZapasBySport($deporte);
        $this->view->showZapasBySport($zapas);
    }

    function createZapatilla($nombre, $descripcion, $imagen, $deporte, $precio, $genero, $marca_id){
        $this->authHelpers->checkLoggedIn();
        $this->model->createZapatilla($nombre, $descripcion, $imagen, $deporte, $precio, $genero, $marca_id);
      //  $this->view->showHomeLocation();
    }

    function deleteZapatilla($id){
        $this->authHelpers->checkLoggedIn();
        $this->model->deleteZapatillaFromDB($id);
      //  $this->view->showHomeLocation();
    }

    /*function updateZapatilla($id){
        $this->authHelpers->checkLoggedIn();
        $this->model->updatetZapatillaFromDB($id);
        $this->view->showHomeLocation();
    }*/
}