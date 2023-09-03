<?php
  if(isset( $_POST['name'])) // Recupération du Nom
  $name = $_POST['name'];
  if(isset( $_POST['email'])) // Recupération de l'adresse mail
  $email = $_POST['email'];
  if(isset( $_POST['tel'])) // Recupération du numero de téléphone
  $tel = $_POST['tel'];
  if(isset( $_POST['adresse'])) // Récupération de l'adresse
  $adresse = $_POST['adresse'];
  if(isset( $_POST['cp'])) // Récupération du code postal
  $cp = $_POST['cp'];
  if(isset( $_POST['ville'])) // Récupération du nom de la ville
  $ville = $_POST['ville'];
  // $recapPanier = $_POST['recapPanier'];

  $subject = "Demande de devis de : $name";




  $content="From: $name \n Email: $email \n Téléphone: $tel \n Adresse: $adresse \n Code Postal: $cp \n Ville: $ville \n"; // Message d'en-tête
  $recipient = "tonadresse@gmail.com"; // Adresse mail destinataire
  $mailheader = "From: $email \r\n"; // Adresse mail expéditeur
  mail($recipient, $subject, $content, $mailheader) or die("Erreur!"); // Recapitulatif du message
  echo "Devis envoyé, merci ! $content"; // Merci
?>
