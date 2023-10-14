<?php
function conexionBBD()
{
    // Reemplaza 'localhost', 'root' y '' con tus propias credenciales de conexión
    return new PDO('mysql:host=localhost;dbname=usuarios;charset=UTF8', 'root', '');
}

function obtenerDatos()
{
    $db = conexionBBD();
    $consulta = $db->prepare('SELECT * FROM usuarios');
    $consulta->execute();

    $usuarios = $consulta->fetchAll(PDO::FETCH_OBJ);
    return $usuarios;
}
