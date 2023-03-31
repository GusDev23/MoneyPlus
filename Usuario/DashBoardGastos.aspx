<%@ Page Title="" Language="C#" MasterPageFile="~/Usuario/UserMaster.Master" AutoEventWireup="true" CodeBehind="DashBoardGastos.aspx.cs" Inherits="WebAppMoneyPlus.Usuario.DashBoardGastos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="Main_Container">
		<div class="ContainerTabs TinyGap d-flex fs-5" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
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
            <div class="SectionTitle mb-3 fs-2 text-center">Gastos</div>
            <div class="row mb-3">                    
                <asp:Repeater ID="RepEgresos" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4 col-sm-6 mt-4">                                 
                                <div class="card text-center">
                                    <div class="card-header fw-bold text-light" style="background-color:#1e3a68" >
                                        <%--Solicitante--%> <%#  Eval("Tipo") %>
                                    </div>
                                    <div class="card-body color">
                                        <h6 class="card-title text-dark"><span class="text-dark fw-bold">$</span><%#  Eval("Monto") %></h6>
                                        <p class="card-text text-dark"><%#  Eval("Descripción") %></p>
                                    </div>
                                    <div class="card-footer text-muted color">
                                        Marzo - Abril
                                    </div>
                                    <asp:Label ID="lblID" runat="server" Visible="false" Text=<%#  Eval("ID") %>></asp:Label>
                                </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
             </div>
            <div class="text-center mb-3"><asp:Label ID="lblTotalEgreso" CssClass="SectionSubTitle mt-3 fs-4" runat="server" Text="Label"></asp:Label></div>
                
				<button id="btn_abrirGrafico" class="CoratoButton CoratoBlue2 mt-3 w-25" onclick="abrir_Grafico()">Ver grafico</button>

                <div id="mi_grafico" class="card mt-3 px-3 text-center" style="display:none">
                    <a onclick="cerrar_Grafico()" class="text-end mt-2"><i class="fa fa-times fa-2x text-danger" aria-hidden="true"></i></a>
                    <div class="SectionTitle">Grafico de ingresos</div>

                    <canvas id="myChart" style="width:100%;max-width:700px"></canvas>
                    
                </div>

        </div>	
    </div>
     <div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
		


        var dataTable = <%= this.dataTable %>;
        const ctx = document.getElementById('myChart');
        var grafico = false;

        function abrir_Grafico() {
            $("#mi_grafico").show('slow');
            $("#btn_abrirGrafico").hide();

            if (grafico == false) {

                var labels_data = [];
                var data = [];

                for (var i = 0; i < dataTable.length; i++) {

                    labels_data.push(dataTable[i][0]);
                    data.push(dataTable[i][1]);

                }

                new Chart(ctx, {
                    type: 'pie',
                    data: {
                        labels: labels_data,
                        datasets: [{
                            label: 'Total',
                            data: data,
                            borderWidth: 1
                        }]
                    },
                });

            }
            

            event.preventDefault()
        }
        function cerrar_Grafico() {
            $("#mi_grafico").hide('slow');
            $("#btn_abrirGrafico").show();

            event.preventDefault()
        }

    </script>
</asp:Content>
