<?php
require_once 'app/model/page.model.php';
require_once 'app/view/page.view.php';

class pageController
{
    private $view;
    private $model;

    function __construct()
    {
        $this->model = new pageModel();
        $this->view = new pageView();
    }

    function mostrarMiPerfil()
    {
        $this->model->verificar();
        $this->view->mostrarMiPerfil();
    }

    function mostrarVerSuscripciones()
    {
        $this->model->verificar();
        $this->view->mostrarVerSuscripciones();
    }

    function MostrarSuscribirse()
    {
        $this->model->verificar();
        $this->view->MostrarSuscribirse();
    }
}
