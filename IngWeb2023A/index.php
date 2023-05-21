<?php
session_start();
include_once("controllers/controller.php");
include_once("controllers/controllerUsuario.php");
include_once("models/crudUsuario.php");
$res= new MvcController();
$res->plantilla();



?>