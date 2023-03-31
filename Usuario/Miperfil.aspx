<%@ Page Title="" Language="C#" MasterPageFile="~/Usuario/UserMaster.Master" AutoEventWireup="true" CodeBehind="Miperfil.aspx.cs" Inherits="WebAppMoneyPlus.Usuario.Miperfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Main_Container">
        <div class="Panel text-center">
            <div class="SectionTitle mb-3 fs-2 text-center">Mi perfil</div>
            <asp:FileUpload ID="FileUpload1" runat="server" Visible="true" accept=".png, .jpg" ToolTip="La imagen debe ser menor a 20 MB"/>
            <a id="link_img"><asp:Image ID="Image_perfil" class="rounded-circle shadow-4-strong cursor-pointer border" style="max-width:300px" alt="imagen"  runat="server" /></a>
            
            <div class="SectionTitle mb-3 text-center"></div>
            <asp:Label ID="lblNombre" runat="server" CssClass="SectionTitle fs-4 mb-3 text-center"></asp:Label>
            <div class="row mt-5">
                <div class="col-md-6">
                    <i class="fa fa-user-circle fa-2x" aria-hidden="true"></i>
                    <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
                    <asp:TextBox ID="txtEmail" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-12 text-center mt-5">
                    <asp:Button ID="btnGuardarCambios" CssClass="CoratoButton w-50" runat="server" Text="Guardar" OnClick="btnGuardarCambios_Click" />

                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $("#ContentPlaceHolder1_FileUpload1").hide();
            $("#link_img").on("click", function () {
                $("#ContentPlaceHolder1_FileUpload1").trigger('click');
            });
        });
    </script>
</asp:Content>

