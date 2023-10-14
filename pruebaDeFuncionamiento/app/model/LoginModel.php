<?php
class LoginModel
{
    private $db;

    function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;dbname= sistema de socios / usuarios ;charset=utf8', 'root', '');
    }

    public function obtenerEmail($email)
    {
        $query = $this->db->prepare('SELECT * FROM usarios WHERE email = ?');
        $query->execute([$email]);

        return $query->fetch(PDO::FETCH_OBJ);
    }
}
