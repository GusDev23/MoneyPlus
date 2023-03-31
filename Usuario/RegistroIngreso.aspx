<%@ Page Title="" Language="C#" MasterPageFile="~/Usuario/UserMaster.Master" AutoEventWireup="true" CodeBehind="RegistroIngreso.aspx.cs" Inherits="WebAppMoneyPlus.Usuario.RegistroIngreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Main_Container">
        <div class="ContainerTabs TinyGap d-flex fs-5">
            <div class="ContainerTab_Default subnavFont_Default flex-fill">
                <a href="RegistroIngreso.aspx">
                    <i class="fa-solid fa-list-check me-2" title="Solicitud cotización"></i>
                    <span class="minhide">
                        Registrar ingreso
                    </span>
                </a>
            </div>
            <div class="ContainerTab_Default subnavFont_Default flex-fill">
                <a href="ModificarIngreso.aspx">
                    <i class="fa-regular fa-file-excel me-2" title="Cotización Excel"></i>
                    <span class="minhide">
                        Modificar ingresos
                    </span>
                </a>
            </div>   
        </div>

        <div class="Panel">
            <div class="Panel bg-light">
        <article class="card-body mx-auto" style="max-width: 400px;">
            <h4 class="SectionTitle mb-3 text-center">Registra un ingreso</h4>
                <div class="input-group mb-3">
                    <asp:DropDownList ID="DdlTiposIngreso" CssClass="form-select" runat="server"></asp:DropDownList>            
                </div> <!-- form-group// -->
	            <div class="form-group input-group mb-3">
                    <asp:TextBox ID="txtDescripcion" CssClass="form-control" placeholder="Descripción" runat="server"></asp:TextBox>
                </div> <!-- form-group// -->
                <div class="form-group input-group mb-3">
                    <asp:TextBox ID="txtMonto" CssClass="form-control" placeholder="Monto $0.00" runat="server"></asp:TextBox>
                </div> <!-- form-group// -->
                     
                <div class="form-group">
                    <asp:Button ID="btnGuardarIngreso" CssClass="CoratoButton mt-2" runat="server" Text="Guardar" OnClick="btnGuardarIngreso_Click" />
                </div> <!-- form-group// -->                                                                      
        </article>
</div> <!-- card.// -->
        </div>
    </div>
</asp:Content>
