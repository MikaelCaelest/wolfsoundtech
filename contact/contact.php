<!--Section: Contact v.2-->
<section id="contact">
      <div class="container-fluid">
        <div class="mx-5 pb-md-4">
          <div class="row">
            <div class="col-12 pb-4 pt-4">
              <div id="titre">
                <h2>Contact</h2>
              </div>
            </div>
            <p class="text-center w-responsive mx-auto mb-5">
              Pour toute demande d'informations n'hésitez pas à nous contacter !
            </p>
          </div>
          <!--Section description-->

          <div class="row">
            <!--Grid column-->
            <div class="col-md-2"></div>
            <div class="col-md-8 mb-md-0 mb-4">
              <form
                id="contact-form"
                name="contact-form"
                action="mail.php"
                method="POST"
              >
                <!--Grid row-->
                <div class="row">
                  <!--Grid column-->
                  <div class="col-md-6">
                    <div class="md-form mb-2">
                      <input
                        type="text"
                        id="name"
                        name="name"
                        class="form-control"
                        placeholder="Votre nom"
                      />
                      <!-- <label for="name" class="">Votre nom</label> -->
                    </div>
                  </div>
                  <!--Grid column-->

                  <!--Grid column-->
                  <div class="col-md-6">
                    <div class="md-form mb-2">
                      <input
                        type="text"
                        id="email"
                        name="email"
                        class="form-control"
                        placeholder="Votre e-mail"
                      />
                      <!-- <label for="email" class="">Votre e-mail</label> -->
                    </div>
                  </div>
                  <!--Grid column-->
                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">
                  <div class="col-md-12">
                    <div class="md-form mb-2">
                      <input
                        type="text"
                        id="subject"
                        name="subject"
                        class="form-control"
                        placeholder="Sujet"
                      />
                      <!-- <label for="subject" class="">Sujet</label> -->
                    </div>
                  </div>
                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">
                  <!--Grid column-->
                  <div class="col-md-12">
                    <div class="md-form">
                      <textarea
                        type="text"
                        id="message"
                        name="message"
                        rows="5 md-10"
                        class="form-control md-textarea"
                        placeholder="Votre message"
                      ></textarea>
                      <!-- <label for="message">Votre message</label> -->
                    </div>
                  </div>
                </div>
                <!--Grid row-->
              </form>

              <div class="text-center text-md-left mt-4">
                <!--Fonction d'envoi du devis (contact-form)-->
                <a
                  class="btn btn-primary"
                  onclick="document.getElementById('contact-form').submit();"
                  >Envoyer</a
                >
              </div>
              <div class="status"></div>
            </div>
            <div class="col-md-2"></div>
            
          </div>
        </div>
      </div>
    </section>