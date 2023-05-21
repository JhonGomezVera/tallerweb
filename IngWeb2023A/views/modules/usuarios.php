<table class="table table-striped">
    <thead>
        <tr>
            <th style="width:40px;">Id</th>
            <th style="width:120px;">Nombre</th>
            <th style="width:120px;">Apellido</th>
            <th style="width:100px;">Cuenta</th>
            <th style="width:50px;">Estado</th>
            <!--<th style="width:120px;">oooo</th>-->
            <th style="width:60px;"></th>
            <th style="width:60px;"></th>
        </tr>
    </thead>
    <tbody>
   
    <?php 
    $consAdmin = new MvcControllerUsuario();
    $consAdmin->consUsuarioAdminController();
    $consAdmin->consUsuarioClieController();
    ?>
    </tbody>
</table> 