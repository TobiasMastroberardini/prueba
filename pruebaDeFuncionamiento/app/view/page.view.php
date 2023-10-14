<?php

class pageView
{

    function mostrarInicio()
    {
        require_once 'Templates/header.phtml';
        require 'Templates/inicio.phtml';
    }

    function mostrarMiPerfil()
    {
        require_once 'Templates/header.phtml';
        echo 'miPerfil';
    }

    function mostrarVerSuscripciones()
    {
        require_once 'Templates/header.phtml';
        echo 'verSuscripciones';
    }

    function MostrarSuscribirse()
    {
        require_once 'Templates/header.phtml';
        echo 'suscribirse';
    }
}
