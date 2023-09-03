<?php
  if(isset( $_POST['name'])) // Recupération du Nom
  $name = $_POST['name'];
  if(isset( $_POST['email'])) // Recupération de l'adresse mail
  $email = $_POST['email'];
  if(isset( $_POST['message'])) // Recupération du message
  $message = $_POST['message'];
  if(isset( $_POST['subject'])) // Recupération de l'objet
  $subject = $_POST['subject'];

  $content="From: $name \n Email: $email \n Message: $message"; // Message d'en-tête
  $recipient = "tonadresse@mail.com"; // Adresse mail destinataire
  $mailheader = "From: $email \r\n"; // Adresse mail expéditeur
  mail($recipient, $subject, $content, $mailheader) or die("Erreur!"); // Recapitulatif du message
  echo "Message envoyé, merci !"; // Merci
?>
