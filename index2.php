<?php 
if(isset($_GET['page'])) {
  $page = $_GET['page'];
} else {                  
  $page = 'reservation'; 
}?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <?php 
    // Appel des librairies et scripts
     include('rub/link.php');
    // Appel des librairies et scripts pour les fonctionnalités du panier
     include('rub/link2.php'); ?>
    <title>Wolf Sound Tech</title>
  </head>

  <body style="background-color: lightgray;">
   <div id="conteneur" style="min-height: 76.2vh;"> 
  <?php 
    // Appel du menu et ouverture de session
  include ('rub/header.php');
    // Appel du panier
  include('rub/cart.php');

    // Affichage de la page
     if(file_exists('rub/'.$page.'.php')) {include('rub/'.$page.'.php');}

    // Appel du footer
  include ('rub/footer.php'); ?>
  </div>

  <!--Scripts pour les fonctionnalités du panier (compatible à toutes les pages)-->
  <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="js/cart.js" id="rendered-js"></script>
  </body>
</html>
