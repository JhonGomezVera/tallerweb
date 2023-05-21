<?php 
/**
 *()) */
class MvcControllerUsuario
{
	
	public function consultaUsuarioController()
	{
		if (isset($_POST['usuarioIngreso'])){
		     $user = $_POST['usuarioIngreso'];
		     $pass = $_POST['passIngreso'];
		     $tabla= $_POST['rol'];
		     $cons= new DatosUsuario();
		     if ($res=$cons->consultaUsuarioModel($user,$pass,$tabla)) {
		     	 //var_dump($res);
		     	$_SESSION['cuenta']=$user;
		     	$_SESSION['nombre']=$res["nombre"];
		     	$_SESSION['apellido']=$res["apellido"];
		     	$_SESSION['imagen']=$res["img"];
		     	header("location:admin.php");		     
		     }else
		     echo "usuario o contraseña no existe";	
		}
	}
	public function consUsuarioAdminController()
	{
		$cons= new DatosUsuario();
			if ($res=$cons->consUsuarioAdminModel()) {
				 Foreach ($res as $row => $item) {
				 	
        echo'<tr>
        	<td align="center">'.$item["codigo"].'</td>
            <td>'.$item["nombre"].'</td>
            <td>'.$item["apellido"].'</td>
            <td>'.$item["usua_nombre"].'</td>
            <td align="center">'.$item["estado"].'</td>
            <td>'."Admin".'</td>
            <td>
                <a href="Admin.php?action=editarUser&id='.$item["codigo"].'&rol='."Administrador".'">Editar</a>
            </td>
            <td>
                <a onclick="javascript:return confirm('."¿Seguro de eliminar este registro?".');" href="?c=Alumno&a=Eliminar&id="">Eliminar</a>
            </td>
        </tr>';
    			 }
   
			}
			
	}
	
	public function consUsuarioClieController()
	{
		$cons= new DatosUsuario();
			if ($res=$cons->consUsuarioClieModel()) {
				 Foreach ($res as $row => $item) {
				 	
        echo'<tr>
        	<td align="center">'.$item["codigo"].'</td>
            <td>'.$item["nombre"].'</td>
            <td>'.$item["apellido"].'</td>
            <td>'.$item["usua_nombre"].'</td>
            <td align="center">'.$item["estado"].'</td>
            <td>'."Cliente".'</td>
            <td>
                <a href="Admin.php?action=editarUser&id='.$item["codigo"].'&rol='."Cliente".'">Editar</a>
            </td>
            <td>
                <a onclick="javascript:return confirm('."¿Seguro de eliminar este registro?".');" href="?c=Alumno&a=Eliminar&id="">Eliminar</a>
            </td>
        </tr>';
    			 }
   
			}
			
	}
}


 ?>