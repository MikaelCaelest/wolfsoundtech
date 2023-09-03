<?php 
session_start();
?>
<!-- Header avec logo + menu burger -->
<header class="navbar navbar-dark navbar-expand-md fixed-top">
      <a href="index.php#accueil"
        ><img
          id="logo"
          src="images/logos/wst-blanc.png"
          alt="logo du site"
          class="navbar-brand d-md-none"
      /></a>
      <a href="index.php"
        ><img
          id="logo-big"
          src="images/logos/logo-alex-(complet-blanc).png"
          alt="logo du site"
          class="d-none d-md-block"
      /></a>
      <button
        type="button"
        class="navbar-toggler"
        data-bs-toggle="collapse"
        data-bs-target="#contenu-nav"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
<!-- Menu de navigation -->
      <div
        class="collapse navbar-collapse justify-content-end"
        id="contenu-nav"
      >
        <ul class="navbar-nav me-2 align-items-end">
          <li class="nav-item">
            <a aria-current="page" href="index.php?page=onepage" class="nav-link">Accueil</a>
          </li>
          <li class="nav-item">
            <a href="index.php#sonorisation" class="nav-link">Sonorisation</a>
          </li>
          <li class="nav-item">
            <a href="index.php#lumiere" class="nav-link">Lumière</a>
          </li>
          <li class="nav-item">
            <a href="index.php#studio" class="nav-link">Studio</a>
          </li>
          <li class="nav-item">
            <a href="index.php#contact" class="nav-link">Contact</a>
          </li>
          <li class="nav-item">
          <input type="hidden" name="id" value=""/>
          <a href="index2.php?page=reservation" class="btn btn-light nav-link text-dark" name="reservation">Réservation ou location</a>
          </li>
        </ul>
      </div>
    </header>
