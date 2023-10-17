<?php
include_once 'app/model/subscripcionesModel.php';
include_once 'app/view/subscripcionesView.php';


class SubscripcionesController
{

    private $model;
    private $view;

    function __construct()
    {
        $this->model = new SubscripcionesModel();
        $this->view = new SubscripcionesView();
    }

    //defino un método de la clase (funcion)
    function ShowSubs()
    {

        //obtengo las series del modelo
        $subscripciones = $this->model->getSubs();
        //actualizo la vista
        $this->view->ShowSubs($subscripciones);
    }
}
