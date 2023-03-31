<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebAppMoneyPlus.HomePage.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Main_Container">
        <div class="Panel">
            <div class="row mx-auto">
                <div class="col-md-6 mt-3">
                    <h2 class="text-center text-de"><strong>¡Recuerda que tus finanzas son importantes para nosotros!</strong></h2>
                    <p>Comienza un nuevo proyecto personal que mejora el rendimiento de tus ingresos para aprovecharlos de la mejor manera.</p>
                    <div class="text-center mt-2">
                        <ul class="list-group">
                            <li class="list-group-item active" style="background-color:#041F33" aria-current="true">Aprende a invertir</li>
                            <li class="list-group-item ">Revisa tus estadísticas</li>
                            <li class="list-group-item active" style="background-color:#041F33">Sigue tus sueños</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6 mt-1 text-center">
                    <img src="img/Banner3.jpg" class="img-thumbnail" alt="...">
                </div>
            </div>
            <hr />
            <h3 class="text-center"><strong>Controla tus gastos de forma segura</strong></h3>
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner mx-auto w-50">
              <div class="carousel-item active">
                <img src="img/finanzaspersonales.jpg" class="rounded w-100" alt="..." width="200" height="600">
                <div class="carousel-caption d-none d-md-block">
                  <h5 class="text1">Administra tus finanzas</h5>
                  <h5 class="text-ligth">Conoce más acerca de nosotros</h5>
                </div>
              </div>
              <div class="carousel-item">
                <img src="img/Banner2.jpg" class="rounded w-100" alt="..." width="200" height="600">
                <div class="carousel-caption d-none d-md-block">
                  <h5 class="text1">Persigue tus sueños</h5>
                  <h5 class="text-ligth">El futuro son las finanzas</h5>
                </div>
              </div>
              <div class="carousel-item">
                <img src="img/Banner5.jpg" class="rounded w-100" alt="..." width="200" height="600">
                <div class="carousel-caption d-none d-md-block">
                  <h5 class="text1">Establece un plan de ahorro</h5>
                  <h5 class="text-ligth">Logra tus metas</h5>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
            <div class="mx-auto text-center rounded mt-5 mb-5" style="background-color:#041F33">
                <img _ngcontent-arq-c13="" class="img-fluid mb-5 mt-3" id="img-section-4" src="../static/img/security.png">
                <h4 _ngcontent-qsp-c13="" class="mt-3 text-light"> Tu información financiera personal siempre está<br _ngcontent-qsp-c13=""><strong _ngcontent-qsp-c13="" style="color:#2bc2fd" >segura con nosotros.</strong></h4>
                <h4 _ngcontent-qsp-c13="" class="mt-5 text-light"> No solicitamos información<br _ngcontent-qsp-c13=""><strong _ngcontent-qsp-c13="" style="color:#2bc2fd">bancaria.</strong></h4>
                <h4 _ngcontent-qsp-c13="" class="mt-5 text-light"> Contamos con protocolos de suguridad precisos <br _ngcontent-qsp-c13=""><strong _ngcontent-qsp-c13="" class="mb-3" style="color:#2bc2fd">para protección de todos.</strong></h4>
            
                <br />
            </div>
        </div>
        
    </div>
    <div class="container-fluid text-center">
            <div class="row p-5 pb-2 bg-dark text-white mx-auto">

              <div class="col-xs-12 col-md-6 col-lg-4 mt-1">
                <div>
                <p href="" class=" text-decoration-none nav-item fs-3 fw-bold navBarItem_Texto text-light">Money<span style="color: #d4af37 ">+</span></p>
                </div>
                <p class="text-light">Priv. 12 de Diciembre col. La Resurrección</p>
                <p class="text-light">Puebla, Pue.</p>
              </div>
              <div class="col-xs-12 col-md-6 col-lg-4 mt-1">
                <p class="h4 text-light">Conocenos</p>
                <div class="mb-3">
                  <a class="text-white text-decoration-none" href="PoliticasPrivacidad.html" target="_blank">Política de privacidad</a>
                </div>
                <div class="mb-3">
                  <a class="text-white text-decoration-none" href="TerminosCondiciones.html" target="_blank">Términos y condiciones</a>
                </div>
                <div class="mb-3">
                  <a class="text-white text-decoration-none" href="ProteccionDatos.html" target="_blank">Protección de datos personales</a>
                </div>
              </div>
              <div class="col-xs-12 col-md-6 col-lg-4 mt-1">
                <p class="h4 text-light">Redes sociales</p>
                <div class="mb-3">
                  <i class="fa-brands fa-facebook"></i>
                </div>
                <div class="mb-3">
                 <i class="fa-brands fa-instagram"></i>
                </div>
                <div class="mb-3">
                  <i class="fa-brands fa-square-twitter"></i>
                </div>
              </div>
              <div class="col-xs-12 pt-4">
                <p class="text-white text-center">Copyright - Todos los derechos reservados © Money+ 2023</p>
              </div>
            </div>
          </div>
</asp:Content>
