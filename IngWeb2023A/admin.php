<?php
session_start();

include_once("controllers/controller.php");
include_once("controllers/controllerUsuario.php");
include_once("models/crudUsuario.php");

if ($_SESSION['cuenta']==null || $_SESSION['cuenta']=='') {
	session_destroy();
     header("location:index.php?action=ingresar"); 

}else{	
	$res= new MvcController();
	$res->plantillaAdmin();
}


?>