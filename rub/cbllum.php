<?php
// Appel fonction PhP
require("classes/produits.php");

  $CblLum=afficherPrdC2SC2();

?>

<div class="container-fluid">
<a href="index2.php?page=cbl" class="btn btn-dark text-decoration-none text-light" style="position: absolute;top: 90px;right: 10px; z-index : 1;">RETOUR</a>
<div class="row m-auto">
<div class="col-12 mb-5 mt-5 pb-5">
    <!-- Création automatique des listes -->
<?php foreach($CblLum as $cbllum) { ?>
    <div class="card mb-3 m-auto" style="max-width: 700px">
        <div class="row g-0">
            <div class="col-md-3">
                <!-- Appel de l'image du produit depuis la BDD -->
                    <img src="<?= $cbllum->imgPrd?>" class="card-img img-fluid d-none d-md-block" alt="<?= $cbllum->libellePrd ?>">
                </div>
                <div class="col-md-9">
             <div class="card-body text-end">
                 <!-- Nom du produit -->
                <h5 class="card-title"><?= $cbllum->libellePrd?></h5>
                <!-- Prix du produit -->
                <p class="card-text"><?= $cbllum->prix.' €/u'?></p>
               <span class="d-flex justify-content-end align-items-center"> <p class="card-text pt-3"><small class="text-muted mx-3"><?= 'Quantité disponible : '.$cbllum->qte?></small></p><button class="add-to-cart btn btn-dark" 
               data-name=<?= $cbllum->libellePrd?>
               data-price=<?= $cbllum->prix
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

