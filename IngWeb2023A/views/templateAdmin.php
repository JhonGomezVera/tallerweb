<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link rel="stylesheet" type="text/css" href="styleP.css">
</head>
<body>
<div class="contenedor">
    <header class="header">
	
	<?php include "views/header.php"; ?>
        <div class="container logo-nav-container">
            <a href="#" class="logo">logo</a>
         <?php 
            include "views/modules/navegacionAdmin.php";
        ?>
        </div>
    </header>
    
    <main class="contenido">
        <section>
    
            <?php
            $menu = new MvcController();
            $menu->enlacePaginasController();
            ?>
        </section>
    </main>
<aside class="sidebar">
    <h3>SIDEBAR</h3>
    
</aside>

<div class="widget-1">
    <h3>WIDGET 1</h3>
	<img src="fotos/descarga2.jpg" alt="Logo" width="200" height="100">
	
</div>
<div class="widget-2">
    <h3>WIDGET 2</h3>
</div>
<footer class="footer">
    <h3>FOOTER</h3>
    <?php include "views/footer.php"; ?>

</footer>

</div>



</body>
</html>