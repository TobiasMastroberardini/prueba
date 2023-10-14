<?php

class authView
{

    function MostrarRegistro()
    {
        require_once 'Templates/header.phtml';
        require './Templates/registro.phtml';
    }

    public function showFormLogin()
    {
        require './Templates/login.phtml';
    }
}
