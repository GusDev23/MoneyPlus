<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/HomeMaster.Master" AutoEventWireup="true" CodeBehind="PreguntasFrecuentes.aspx.cs" Inherits="WebAppMoneyPlus.HomePage.PreguntasFrecuentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Main_Container">
    <div class="Panel">

        <!--Sección de preguntas y respuestas-->
        <div class="mx-auto text-center p-5 w-75">
        
        <div class="row text-center">
            <div class="SectionTitle">¿Dónde estamos y quienes somos?</div>
            <i class="fa-solid fa-map-location-dot fa-3x CoratoBlue3"></i>            
            <hr />
            <p>
                Estamos ubicados en la Resurrección Puebla #20, Puebla, pue.<br>
                Somos una empresa socialmente responsable que busca ayudarte en tu vida personal de una forma amigable e interesante. <br>
                Para más imformación puedes visitar nuestra sección "Nosotros" para conocer más sobre Money+.
            </p>
            <hr />
        </div>
        <div class="row text-center">
            <div class="SectionTitle">¿Qué ofrecemos?</div>
            <i class="fa fa-handshake fa-3x CoratoBlue3"></i>            
            <hr />
            <p>
                Una aplicación que te ayude a administrar tus ingresos y gastos personales de manera única a la palma de tu mano, 
                sin meter cuentas de banco o exponer tu información personal, además de poderte ofrecer metas a corto o largo plazo 
                para generar ahorros y puedas administrar de mejor manera tus ingresos.
            </p>
            <hr />
        </div> 
        <div class="row text-center">
            <div class="SectionTitle">¿Es seguro?</div>
            <i class="fa fa-lock fa-3x CoratoBlue3"></i>            
            <hr />
            <p>
                 Nuestra aplicación es segura pues toda la información recabada solo la puedes consultar tú en cualquier momento,
                además de no pedirte información oficial de otras instituciones a las que estés ligado o en su caso tener un contrato.
            <br>
                Por eso es importante y recomendamos con los brazos abiertos que revises nuestra "Política de privacidad".
            </p>
            <hr />
        </div> 
        <div class="row text-center">
            <div class="SectionTitle">¿Qué puedo hacer dentro de la aplicación?</div>
            <i class="fa-solid fa-clipboard-list fa-3x CoratoBlue3"></i>            
            <hr />
            <p>
                Como ya mencionamos nuestra intención es ayudarte a guardar ingresos, eliminar gastos innecesarios por medio de una serie de metas,
                para ello tienes derecho a realizar lo siguiente:                
            </p>
            <ul class="list-group">
                    <li class="list-group-item active" style="background-color:#041F33">Inicio/cierre de sesión</li>
                    <li class="list-group-item ">Registro/consulta ingreso.</li>
                    <li class="list-group-item active" style="background-color:#041F33">Registro/consulta egreso.</li>
                    <li class="list-group-item ">Calcular balance.</li>
                    <li class="list-group-item active" style="background-color:#041F33">Personaliza tu perfil.</li>
            </ul>
            <hr />
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
