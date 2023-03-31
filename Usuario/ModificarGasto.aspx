<%@ Page Title="" Language="C#" MasterPageFile="~/Usuario/UserMaster.Master" AutoEventWireup="true" CodeBehind="ModificarGasto.aspx.cs" Inherits="WebAppMoneyPlus.Usuario.ModificarGasto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="Main_Container">
         <div class="ContainerTabs TinyGap d-flex fs-5" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
            <div class="ContainerTab_Default subnavFont_Default flex-fill">
                <a href="RegistroGasto.aspx">                
                    <i class="fa-solid fa-list-check me-2" title=""></i>
                    <span class="minhide">
                        Registrar gastos
                    </span>
                </a>
            </div>
            <div class="ContainerTab_Default subnavFont_Default flex-fill">
                <a href="ModificarGasto.aspx">
                    <i class="fa-regular fa-file-excel me-2" title=""></i>
                    <span class="minhide">
                        Modificar gastos
                    </span>
                </a>
            </div>   
        </div>
         <div class="Panel">
            <div class="SectionTitle mb-3">Gastos</div>
    		    <div id="tabla_gastos" class="card-group fs-4">
    		       <asp:GridView ID="gdvGastos" runat="server" onrowdatabound="GridView_RowDataBound" OnSelectedIndexChanged="gdvGastos_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#cfd5da" />
                    <Columns>
                        <asp:HyperLinkField Text="Modificar"  ControlStyle-CssClass="Chip"/>
                    </Columns>
                </asp:GridView>
                </div>
         </div>
     </div>
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Modifica el gasto</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form class="mt-3">
                    <div class="form-group input-group">
		                <select class="form-select">
		                    <option >Selecciona el tipo gasto</option>
		                    <option value="1">Alimentación</option>
		                    <option selected value="2">Hogar</option>
		                    <option value="3">Salud</option>
		                    <option value="4">Ocio</option>
		                </select>
                    </div> <!-- form-group// -->
	                <div class="form-group input-group mt-2">
                        <input name="" class="form-control" placeholder="Descripción" type="text" value="Renta departamento">
                    </div> <!-- form-group// -->
                    <div class="form-group input-group mt-2">
                        <input name="" class="form-control" placeholder="Monto $0.00" type="email" value="$3750.00">
                    </div> <!-- form-group// -->
                                                                     
                </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-dark w-25 me-1" data-bs-dismiss="modal">Cancelar</button>
            <button type="button" class="btn btn-success w-25">Guardar</button>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
