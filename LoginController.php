<?php
require_once '.view/LoginView.php';
require_once '.model/LoginModel.php';

class LoginController
{
    private $view;
    private $model;
    private $Titulo;

    function __construct()
    {
        $this->view = new LoginView();
        $this->model = new LoginModel();
        $this->Titulo = "Login";
    }

    function login()
    {
        $this->view->mostrarLogin($this->Titulo);
    }
}
