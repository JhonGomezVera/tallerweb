<h1>ingresar</h1>
<form method="post">
	<fieldset>
	 <legend>Ingresar Sistema</legend>
	 <input type="text" name="usuarioIngreso" placeholder="Ingrese Usuario" required>	
	 <input type="password" name="passIngreso" placeholder="Ingrese Clave" required>
	 <select name="rol" required>
	 	<option value="">Seleccione la opción</option>
	 	<option value="Administrador">Administrador</option>
	 	<option value="Cliente">Cliente</option>

	 </select>	
     <input type="submit" value="Enviar">
	</fieldset>
</form>
<?php 
 $ingreso = new MvcControllerUsuario();
 $ingreso->consultaUsuarioController();

 ?>