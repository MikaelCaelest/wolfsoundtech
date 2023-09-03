<?php
// Appel fonction PhP
require("classes/produits.php");

  $CatSon=afficherSousCatSon();

?>


<div class="album">
<a href="index2.php" class="btn btn-dark text-decoration-none text-light" style="position: absolute;top: 90px;right: 10px; z-index : 1;">RETOUR</a>
      <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 m-auto">
          <!-- Création automatique des listes -->
          <?php foreach($CatSon as $catson) { ?>
            <div class="col">
              <div class="card m-auto align-items-center pt-3 bg-light" style="width: 250px; height: 180px;">
              <!-- Appel de l'image du produit depuis la BDD -->
              <a href="<?= 'index2.php?page='.$catson->webSsCat ?>" class="streched-link text-decoration-none"><img src="<?= $catson->imgSousCat ?>" class="card-img" style="width : 100px; height : 100px">
              <div class="card-body mt-2">
                <!-- Nom du produit -->
              <button class="btn btn-dark text-light" style="width: 250px"><?= substr($catson->libelleSousCat, 0, 200) ?></button></a>
              <div class="d-flex justify-content-between align-items-center">
              </div>
            </div>
          </div>
           </div>
          <?php } ?>
          </div>
          </div>
      </div>
    </div>

