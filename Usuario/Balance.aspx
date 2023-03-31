<%@ Page Title="" Language="C#" MasterPageFile="~/Usuario/UserMaster.Master" AutoEventWireup="true" CodeBehind="Balance.aspx.cs" Inherits="WebAppMoneyPlus.Usuario.Balance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Main_Container">

        <div class="Panel">
            <div class="SectionTitle mb-3 fs-2 text-center">Mi balance</div>
            <div class="container ">
            <%--<div class="row mt-5 mx-auto w-50">
                <div class="col-md-12 border-top border-start border-end border-bottom p-3 mt-1 text-center">
                    <asp:Label Text="$0.00" ID="id_balance" CssClass="h1" runat="server" />
                </div
            </div>
            <div class="row mt-3 p-3">
                <div class="col-md-6 m-1 mx-auto">
                    <div class="CoratoButton Green">Ingresos</div>
                </div>
                <div class="col-md-6 m-1 mx-auto">
                    <div id="button_cotizar_proveedor" class="CoratoButton">Gastos</div>
                </div>
            </div>--%>
        </div>

               <!-- TABLA BALANCE-->
                <div class="card">
            <div class="card-body">
                <div id="invoice">
                    <div class="invoice overflow-auto">
                        <div style="min-width: 600px">
                            <main>
                                <table>
                                    <thead>
                                        <tr>                                            
                                            <th class="fw-bold">#</th>
                                            <th class="text-left fw-bold">Tipo</th>
                                            <th class="text-right fw-bold">Descripcion</th>
                                            <th class="text-right fw-bold">Periodo</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="RepeaterIngresos" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td class="no"><%#  Eval("No") %></td>
                                                    <td class="qty text-center">
                                                       <%#  Eval("Tipo") %>
                                                    </td>
                                                    <td class="unit text-center"><%#  Eval("Descripción") %></td>
                                                    <td class="qty text-center">Marzo - Abril</td>
                                                    <td class="total">$<%#  Eval("Monto") %>.00</td>
                                                </tr>
                                            </ItemTemplate>
                                            
                                        </asp:Repeater>
                                        <tr>
                                            <td class="unit"></td>
                                            <td class="unit"></td>
                                            <td class="unit"></td>
                                            <td class="unit"></td>
                                        </tr>
                                        <asp:Repeater ID="RepeaterGastos" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td class="no_gasto"><%#  Eval("No") %></td>
                                                    <td class="qty text-center">
                                                       <%#  Eval("Tipo") %>
                                                    </td>
                                                    <td class="unit text-center"><%#  Eval("Descripción") %></td>
                                                    <td class="qty text-center">Marzo - Abril</td>
                                                    <td class="total_gasto">$<%#  Eval("Monto") %>.00</td>
                                                </tr>
                                            </ItemTemplate>
                                            
                                        </asp:Repeater>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="2"></td>
                                            <td colspan="2">INGRESOS</td>
                                            <td><asp:Label ID="lblIngresos" runat="server" Text="Label">$5,200.00</asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"></td>
                                            <td colspan="2">GASTOS</td>
                                            <td><asp:Label ID="lblGastos" runat="server" Text="Label">$5,200.00</asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"></td>
                                            <td colspan="2">BALANCE</td>
                                            <td><asp:Label ID="lblBalance" runat="server" Text="Label">$5,200.00</asp:Label></td>
                                        </tr>
                                    </tfoot>
                                </table>
                                <div class="notices">
                                    <div>¡FELICITACIONES!</div>
                                    <div class="notice">Cuentas con un balance financiero sano, sigue asi y tus bolsillos te lo agradeceran.</div>
                                </div>
                            </main>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        </div>
    </div>
</asp:Content>
