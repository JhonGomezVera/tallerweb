<?php 
/**
 *()) */
class MvcController
{
	
	public function plantilla()
	{
		include "views/template.php";
	}
	public function plantillaAdmin()
	{
		include "views/templateAdmin.php";
	}
	public function navegacion()
	{
		include "views/modules/navegacion.php";
	}
	public function navegacionAdmin()
	{
		include "views/modules/navegacionAdmin.php";
	}
	public function enlacePaginasController()
	{
		if (isset($_GET['action'])) {
			$enlacesController = $_GET["action"];
			include "views/modules/".$enlacesController.".php";	
		}
	}	
}


 ?>