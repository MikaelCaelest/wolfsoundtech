<?php
// Appel fonction PhP
require("classes/produits.php");

  $Videos=afficherPrdC5();

?>

<div class="container-fluid">
<a href="index2.php" class="btn btn-dark text-decoration-none text-light" style="position: absolute;top: 90px;right: 10px; z-index : 1;">RETOUR</a>
<div class="row m-auto">
<div class="col-12 mb-5 mt-5 pb-5">
    <!-- Création automatique des listes -->
<?php foreach($Videos as $video) { ?>
    <div class="card mb-3 m-auto" style="max-width: 700px">
        <div class="row g-0">
            <div class="col-md-3">
                <!-- Appel de l'image du produit depuis la BDD -->
                    <img src="<?= $video->imgPrd?>" class="card-img img-fluid d-none d-md-block" alt="<?= $video->libellePrd ?>">
                </div>
                <div class="col-md-9">
             <div class="card-body text-end">
                 <!-- Nom du produit -->
                <h5 class="card-title"><?= $video->libellePrd?></h5>
                <!-- Prix du produit -->
                <p class="card-text"><?= $video->prix.' €/u'?></p>
               <span class="d-flex justify-content-end align-items-center"> <p class="card-text pt-3"><small class="text-muted mx-3"><?= 'Quantité disponible : '.$video->qte?></small></p><button class="add-to-cart btn btn-dark" 
               data-name=<?= $video->libellePrd?>
               data-price=<?= $video->prix
               ?>
                   >Ajouter au panier
                </button></span>
             </div>
            </div>
        </div>
    </div>
    <?php } ?>
</div>
</div>

</div>

