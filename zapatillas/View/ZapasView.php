<?php
require_once './libs/smarty-3.1.39/libs/Smarty.class.php';

class ZapasView{
    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function showHomeLocation(){
        header("Location: ".BASE_URL."home");
    }

    function showZapas($zapas){
        $this->smarty->assign('zapas', $zapas);
        $this->smarty->display('templates/zapasList.tpl');
    }

    function showZapa($zapa, $marca){
        $this->smarty->assign('zapa', $zapa);
        $this->smarty->assign('marca', $marca);
        $this->smarty->display('templates/zapasDetail.tpl');
    }

    function showZapasByGender($zapasByGender){
        $this->smarty->assign('zapasByGender', $zapasByGender);
        $this->smarty->display('templates/zapasByGender.tpl');
    }

    function showZapasBySport($zapas){
      $this->smarty->assign('zapasDeporte', $zapas);
      $this->smarty->display('templates/zapasDeporte.tpl');
    }

    function showUserHomeLocation(){
        header("Location: ".BASE_URL."userhome");
    }
}