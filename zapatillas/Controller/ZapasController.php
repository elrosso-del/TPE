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

    function createZapa($nombre, $descripcion, $imagen, $deporte, $precio, $genero, $marca_id){
        $this->authHelpers->checkLoggedIn();
        $this->model->createZapatilla($nombre, $descripcion, $imagen, $deporte, $precio, $genero, $marca_id);
        $this->view->showUserHomeLocation();
    }

    function deleteZapa($id){
        $this->authHelpers->checkLoggedIn();
        $this->model->deleteZapatillaFromDB($id);
        $this->view->showUserHomeLocation();
    }

    function updateZapa($id){
        $this->authHelpers->checkLoggedIn();
        $this->model->updateZapa($id);
        $this->view->showUserHomeLocation();
    }
}