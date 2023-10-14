<?php

class LoginModel
{
    private $Smarty;

    function __construct()
    {
        $this->Smarty = new Smarty();
    }

    function mostrarLogin($Titulo = '')
    {
        $this->Smarty->assign('Titulo', $Titulo);
        $this->Smarty->display('Templates/login.phtml');
    }
}
