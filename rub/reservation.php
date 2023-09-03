<?php

require("classes/produits.php");

  $Categories=afficherCat();

?>

<div class="album mb-5 pb-5">
<a href="index.php" class="btn btn-dark text-decoration-none text-light" style="position: absolute;top: 90px;right: 10px; z-index : 1;">RETOUR</a>
      <div class="container">
        <div class="row row-cols-md-3 g-3 m-auto">
          <?php foreach($Categories as $categorie) { ?>
            <div class="col mb-md-5">
              <div class="card m-auto align-items-center pt-3 bg-light" style="width: 250px; height: 180px;">
              <a href="<?= 'index2.php?page='.$categorie->webCat ?>" class="streched-link text-decoration-none"><img src="<?= $categorie->imgCat ?>" class="card-img" style="width : 100px; height : 100px">
              <div class="card-body mt-2">
              <button class="btn btn-dark text-light" style="width: 250px"><?= substr($categorie->libelleCat, 0, 200) ?></button></a>
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
    </div>