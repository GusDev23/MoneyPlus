<%@ Page Title="" Language="C#" MasterPageFile="~/Usuario/UserMaster.Master" AutoEventWireup="true" CodeBehind="RegistroGasto.aspx.cs" Inherits="WebAppMoneyPlus.Usuario.RegistroGasto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Main_Container">
        <div class="ContainerTabs TinyGap d-flex fs-5">
            <div class="ContainerTab_Default subnavFont_Default flex-fill">
                <a href="RegistroGasto.aspx">
                    <i class="fa-solid fa-list-check me-2" title="Solicitud cotización"></i>
                    <span class="minhide">
                        Registrar gastos
                    </span>
                </a>
            </div>
            <div class="ContainerTab_Default subnavFont_Default flex-fill">
                <a href="ModificarGasto.aspx">
                    <i class="fa-regular fa-file-excel me-2" title="Cotización Excel"></i>
                    <span class="minhide">
                        Modificar gastos
                    </span>
                </a>
            </div>   
        </div>
        <div class="Panel">
            <div class="Panel bg-light">
        <article class="card-body mx-auto" style="max-width: 400px;">
            <h4 class="SectionTitle mb-3 text-center">Registra un gasto</h4>
                <div class="input-group mb-3">
                    <asp:DropDownList ID="DdlTiposEgresos" CssClass="form-select" runat="server"></asp:DropDownList>            
                </div> <!-- form-group// -->
	            <div class="form-group input-group mb-3">
                    <asp:TextBox ID="txtDescripcion" CssClass="form-control" placeholder="Descripción" runat="server"></asp:TextBox>
                </div> <!-- form-group// -->
                <div class="form-group input-group mb-3">
                    <asp:TextBox ID="txtMonto" CssClass="form-control" placeholder="Monto $0.00" runat="server"></asp:TextBox>
                </div> <!-- form-group// -->
                     
                <div class="form-group">
                    <asp:Button ID="btnGuardarEgreso" CssClass="CoratoButton mt-2" runat="server" Text="Guardar" OnClick="btnGuardarEgreso_Click"/>
                </div> <!-- form-group// -->                                                                      
        </article>
</div> <!-- card.// -->
        </div>
    </div>
</asp:Content>
