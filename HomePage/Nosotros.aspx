<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Nosotros.aspx.cs" Inherits="WebAppMoneyPlus.HomePage.Nosotros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Main_Container">
        <div class="Panel" style="text-align: justify;">
            <div >
                <h2 class="text-center"><strong>¿Quienes somos?</strong></h2>
                <p class="mx-auto w-50">Money+, una empresa socialmente responsable que te ayuda a administrar tus finanzas personales y con ello implementar técnicas de ahorros para alcanzar aquellos objetivos que tanto deseas.</p>
            </div>
            <hr/>
            <div class="row">
                <div class="col SectionTitle text-center">Misión</div>
                <div class="col mx-auto"><p>Ser líder en ayudar al usuario a generar hábitos de ahorro financiero, brindando una experiencia inolvidable a nuestros clientes dentro de nuestra plataforma.</p>
                </div>
                <div class="col text-center">
                    <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-bookmark-check" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M10.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                        <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
                    </svg>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col text-center SectionTitle">Visión</div>
                <div class="col mx-auto"><p>Estar dentro de las 5 mejores empresas de economía dentro de nuestro país y ser reconocida como una empresa sólida en la que confiar.</p>
                </div>
                <div class="col text-center">
                    <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                        <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                        <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                    </svg>
                </div>
            </div>
            <hr />
            <div class="row text-center">
                <div class="col SectionTitle">Valores</div>
                <div class="col mx-auto">
                    <ul class="list-group">
                        <li class="list-group-item active" style="background-color:#041F33" aria-current="true">Respeto</li>
                        <li class="list-group-item ">Honestidad</li>
                        <li class="list-group-item active" style="background-color:#041F33">Tolerancia</li>
                        <li class="list-group-item ">Solidaridad</li>
                        <li class="list-group-item active" style="background-color:#041F33">Compromiso</li>
                    </ul>
                </div>
                <div class="col mx-auto">
                    <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                            <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                    </svg>
                </div>
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
