<?php 
require_once "conexion.php";

class DatosUsuario extends Conexion
{
	public function consultaUsuarioModel($user,$pass,$tabla)
	{
		$stmt= Conexion::conectar()->prepare("SELECT * FROM Usuario u, $tabla c WHERE u.usua_codigo = c.Usua_codigo_fk and usua_nombre = :cuenta and usua_clave=:clave");
			
			$stmt->bindParam(":cuenta", $user, PDO::PARAM_STR);
			$stmt->bindParam(":clave", $pass, PDO::PARAM_STR);
			$stmt->execute();
			return $stmt->fetch();
			$stmt->close();
		}
	public function consUsuarioAdminModel()
	{
		$stmt= Conexion::conectar()->prepare("SELECT * FROM Usuario u, Administrador A WHERE u.usua_codigo = A.Usua_codigo_fk");
			$stmt->execute();
			return $stmt->fetchAll();
			$stmt->close();
		}
	
	public function consUsuarioClieModel()
	{
		$stmt= Conexion::conectar()->prepare("SELECT * FROM Usuario u, Cliente C WHERE u.usua_codigo = C.Usua_codigo_fk");
			$stmt->execute();
			return $stmt->fetchAll();
			$stmt->close();
		}
	

	
}




?>