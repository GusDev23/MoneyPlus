<%@ Page Title="" Language="C#" MasterPageFile="~/InicioSesion/InicioSesion.Master" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="WebAppMoneyPlus.InicioSesion.InicioSesion1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Main_Container">
        <div class="Panel w-50 mx-auto">
            
            
  <div class="bg-white border rounded-5">
    <div class="SectionTitle mb-3 text-center">¡Bienvenido!</div>
    
    <section class="w-100 p-4 d-flex justify-content-center pb-4">
      <div style="width: 26rem;">
        <!-- Pills navs -->
        <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
          <li class="nav-item" role="presentation">
            <a class="nav-link active" id="tab-login" data-mdb-toggle="pill" href="#pills-login" role="tab" aria-controls="pills-login" aria-selected="true">Iniciar sesion</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="tab-register" data-mdb-toggle="pill" href="#pills-register" role="tab" aria-controls="pills-register" aria-selected="false" tabindex="-1">Registrarse</a>
          </li>
        </ul>
        <!-- Pills navs -->

        <!-- Pills content -->
        <div class="tab-content">
          <div class="tab-pane fade active show" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
            <form>
         
              <!-- Email input -->
              <div class="form-outline mb-4">
                <label class="form-label text-dark mb-0" for="loginName" >Usuario</label>
                <asp:TextBox ID="txtUsuario" CssClass="form-control" runat="server"></asp:TextBox>
              </div>
        

              <!-- Password input -->
              <div class="form-outline mb-4">
                <label class="form-label text-dark mb-0" for="loginPassword" style="margin-left: 0px;">Contreseña</label>
                  <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
              </div>

              <!-- 2 column grid layout -->
              <div class="row mb-4">
                <div class="col-md-6 d-flex justify-content-center">
                  <!-- Checkbox -->
                </div>

                <div class="col-md-6 d-flex justify-content-center">
                  <!-- Simple link -->
                  <a href="RecuperarContrasena.aspx">¿Olvidaste tu contraseña?</a>
                </div>
              </div>

              <!-- Submit button -->
              <%--<button type="submit" class="btn btn-primary btn-block mb-4">Ingresar</button>--%>
              <asp:Button ID="btnIngresar" CssClass="CoratoButton mb-4" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
                <!-- Register buttons -->
              <div class="text-center">
                <p>¿No tienes una cuenta? <a onclick="abrirRegistro()">¡Registrate!</a></p>
              </div>
            </form>
          </div>

          <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="tab-register">
              <!-- Name input -->
              <div class="form-outline mb-4">
                <label class="form-label text-dark mb-0" for="registerName" style="margin-left: 0px;">Nombre</label>
                <%--<input type="text" id="registerName" class="form-control">--%>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" ></asp:TextBox>
              </div>

              <!-- Username input -->
              <div class="form-outline mb-4">
                <label class="form-label text-dark mb-0" for="registerUsername" style="margin-left: 0px;">Usuario</label>
                <%--<input type="text" id="registerUsername" class="form-control">--%>
                <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server"></asp:TextBox>
              </div>

              <!-- Email input -->
              <div class="form-outline mb-4">
                <label class="form-label text-dark mb-0" for="registerEmail" style="margin-left: 0px;">Email</label>
                <%--<input type="email" id="registerEmail" class="form-control">--%>
                <asp:TextBox ID="txtEmail" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
              </div>

              <!-- Password input -->
              <div class="form-outline mb-4">
                <label class="form-label text-dark mb-0" for="registerPassword" style="margin-left: 0px;">Contraseña</label>
                <%--<input type="password" id="registerPassword" class="form-control">--%>                  
                <asp:TextBox ID="txtContrasena" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
              </div>

              <!-- Repeat Password input -->
              <div class="form-outline mb-4">
                <label class="form-label text-dark mb-0" for="registerRepeatPassword" style="margin-left: 0px;">Confirmar contraseña</label>
                <input type="password" id="registerRepeatPassword" class="form-control">
              </div>

              <!-- Submit button -->
              <%--<button type="submit" class="btn btn-primary btn-block mb-3">Crear cuenta</button>--%>
              <%--<asp:Button ID="btnRegistrarUser" CssClass="btn btn-primary btn-block mb-3" runat="server" Text="Crear cuenta" OnClick="btnRegistrarUser_Click1"/>--%>
              <asp:Button ID="btnRegistrar" CssClass="CoratoButton mb-4" runat="server" Text="Registrar usuario" OnClick="btnRegistrar_Click" />

          </div>
        </div>
        <!-- Pills content -->
      </div>
    </section> 
  </div>

        </div>        
    </div>
    <script>
        
        $(document).ready(function () {
            $('#tab-login').on('click', function () {
                $('#tab-login').removeClass("active");
                $('#tab-login').addClass("active");
                $('#tab-register').removeClass("active");

                $("#pills-login").removeClass("active show");
                $("#pills-login").addClass("active show");
                $("#pills-register").removeClass("active show");

            });
            $('#tab-register').on('click', function () {
                $('#tab-register').removeClass("active");
                $('#tab-register').addClass("active");
                $('#tab-login').removeClass("active");

                $("#pills-register").removeClass("active show");
                $("#pills-register").addClass("active show");
                $("#pills-login").removeClass("active show");
            });
        });
        function abrirRegistro() {
            $('#tab-register').removeClass("active");
            $('#tab-register').addClass("active");
            $('#tab-login').removeClass("active");

            $("#pills-register").removeClass("active show");
            $("#pills-register").addClass("active show");
            $("#pills-login").removeClass("active show");
        }
    </script>
</asp:Content>
