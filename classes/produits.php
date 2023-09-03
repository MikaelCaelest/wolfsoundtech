<?php function afficherCat() // Affichage Catégories 
{
	if(require("config/connexion.php"))
	{
		$req=$access->prepare("SELECT libelleCat, imgCat, webCat FROM categorie");

        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;
	}

} ?>

<?php function afficherSousCatSon() // Affichage Sous catégories - Son
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libelleSousCat, imgSousCat, webSsCat FROM souscat WHERE categorieID=1");

        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 


<?php function afficherSousCatCables() // Affichage Sous catégories - Câbles
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libelleSousCat, imgSousCat, webSsCat FROM souscat WHERE categorieID=2");

        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 


<?php function afficherSousCatLumiere() // Affichage Sous catégories - Lumière
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libelleSousCat, imgSousCat, webSsCat FROM souscat WHERE categorieID=3");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 

<?php function afficherPrdC1SC1() // Son - Mix Perifs
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libellePrd, descriptionPrd, imgPrd, prix, qte FROM produit WHERE sousCatID=1 ORDER BY libellePrd");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 

<?php function afficherPrdC1SC2() // Son - Diffusion
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libellePrd, descriptionPrd, imgPrd, prix, qte FROM produit WHERE sousCatID=2 ORDER BY libellePrd");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 

<?php function afficherPrdC1SC3() // Son - Captation
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libellePrd, descriptionPrd, imgPrd, prix, qte FROM produit WHERE sousCatID=3 ORDER BY libellePrd");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 

<?php function afficherPrdC2SC1() // Cable - Son
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libellePrd, descriptionPrd, imgPrd, prix, qte FROM produit WHERE sousCatID=4 ORDER BY libellePrd");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 

<?php function afficherPrdC2SC2() // Cable - Lumiere
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libellePrd, descriptionPrd, imgPrd, prix, qte FROM produit WHERE sousCatID=5 ORDER BY libellePrd");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 

<?php function afficherPrdC2SC3() // Cable - Electrique
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libellePrd, descriptionPrd, imgPrd, prix, qte FROM produit WHERE sousCatID=6 ORDER BY libellePrd");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 

<?php function afficherPrdC3SC1() // Lumière - Controle
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libellePrd, descriptionPrd, imgPrd, prix, qte FROM produit WHERE sousCatID=7 ORDER BY libellePrd");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 

<?php function afficherPrdC3SC2() // Lumière - Projecteur
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libellePrd, descriptionPrd, imgPrd, prix, qte FROM produit WHERE sousCatID=8 ORDER BY libellePrd");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 

<?php function afficherPrdC4() // Structure_Technique
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libellePrd, descriptionPrd, imgPrd, prix, qte FROM produit WHERE catID=4 ORDER BY libellePrd");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 

<?php function afficherPrdC5() // Video
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libellePrd, descriptionPrd, imgPrd, prix, qte FROM produit WHERE catID=5 ORDER BY libellePrd");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 

<?php function afficherPrdC6() // Salle de rep
{
    if(require("config/connexion.php"))
    {
        $req=$access->prepare("SELECT libellePrd, descriptionPrd, imgPrd, prix, qte FROM produit WHERE catID=6 ORDER BY libellePrd");
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

    }
} ?> 