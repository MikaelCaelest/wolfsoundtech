<!-- Navbar - Panier -->
<nav class="navbar navbar-inverse bg-inverse bg-faded fixed-top" style="width:205px;margin-top: 85px;margin-left: 10px;">
      <div class="row">
        <div class="col">
          <button
            type="button"
            class="btn btn-dark"
            data-toggle="modal"
            data-target="#cart"
          >
            Panier (<span class="total-count"></span>)</button
          ><button class="clear-cart btn btn-light">Vider panier</button>
        </div>
      </div>
    </nav>

<!-- Modal - PopUp Panier -->
<div
      class="modal fade"
      id="cart"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Panier</h5>
            <button
              type="button"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <table class="show-cart table"></table>
            <div>Montant total : €<span class="total-cart"></span></div>
          </div>
          <div class="modal-footer">

<!-- Formulaire de contact - Panier -->
<div class="row">
            <!--Grid column-->
            <div class="col-md-2"></div>
            <div class="col-md-8 mb-md-0 mb-4">
              <form
                id="contact-form"
                name="contact-form"
                action="contact/mailpanier.php"
                method="POST"
              >
                <!--Grid row-->
                <div class="row">
                  <!--Grid column-->
                  <div class="col-md-12">
                    <div class="md-form mb-2">
                      <input
                        type="text"
                        id="name"
                        name="name"
                        class="form-control"
                        placeholder="Prénom et nom (ou raison sociale)"
                      />
    
                    </div>
                  </div>
                </div>
                  <!--Grid column-->

                  <!--Grid column-->
                  <div class="row">
                  <div class="col-md-6">
                    <div class="md-form mb-2">
                      <input
                        type="text"
                        id="email"
                        name="email"
                        class="form-control"
                        placeholder="Votre e-mail"
                      />
                   
                    </div>
                  </div>

                 
                  <!--Grid column-->
                  <div class="col-md-6">
                    <div class="md-form mb-2">
                      <input
                        type="text"
                        id="tel"
                        name="tel"
                        class="form-control"
                        placeholder="Numéro de téléphone"
                      />
    
                    </div>
                  </div>
                  <!--Grid column-->

                  <!--Grid column-->
                  <div class="col-md-12">
                    <div class="md-form mb-2">
                      <input
                        type="text"
                        id="adresse"
                        name="adresse"
                        class="form-control"
                        placeholder="Adresse (numéro et rue)"
                      />
                   
                    </div>
                  </div>
                  <!--Grid column-->
                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">
                  <div class="col-md-6">
                    <div class="md-form mb-2">
                      <input
                        type="text"
                        id="cp"
                        name="cp"
                        class="form-control"
                        placeholder="Code Postal"
                      />
                    </div>
                  </div>

                  <div class="col-md-6">
                    <div class="md-form mb-2">
                      <input
                        type="text"
                        id="ville"
                        name="ville"
                        class="form-control"
                        placeholder="Ville"
                      />
                    </div>
                  </div>
                </div>
<!-- ################################################################
                 <div class="row">
                  <div class="col-md-12">
                    <div class="md-form mb-2">
                      <input
                          type="hidden"
                          id="recapPanier"
                          name="recapPanier"
                          class="form-control"
                        />
                    </div>
                  </div>
                </div> -->
              </form>
<!-- <script type="text/javascript">
  function copyCart(){
        var contenuPanier = document.querySelector('.modal-body');
        var recapPanier = document.querySelector('#recapPanier');
        recapPanier.value = contenuPanier.textContent;

      }
</script> 
 ################################################################ -->
              <div class="text-center text-md-left mt-4">
                <!--Fonction d'envoi du devis (contact-form)-->
                <a
                  class="btn btn-primary"
                  onclick="document.getElementById('contact-form').submit();"
                  >Envoyer la demande de devis</a
                >
              </div>
              <div class="status"></div>
            </div>

            <div class="text-center text-md-left mt-4">
                <a
                  class="btn btn-secondary"
                  data-dismiss="modal"
                  >Fermer</a
                >
              </div>
</div>
</div>
</div>
</div>
</div>


