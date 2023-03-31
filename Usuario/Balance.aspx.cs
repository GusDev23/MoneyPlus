using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using CapaLogicaNegocio;
using Entidades;
namespace WebAppMoneyPlus.Usuario
{
    public partial class Balance : System.Web.UI.Page
    {
        Ln_Balance objBalance;
        Entidades.Usuario objUser;
        string msj = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClassConfig temp = new ClassConfig();
                objBalance = new Ln_Balance(temp.cadenaConexion);
                Session["SessionBalance"] = objBalance;
                objUser = (Entidades.Usuario)Session["UserLogin"];
                LeerTabla(objBalance.MostrarIngresosBalance(objUser, ref msj), objBalance.MostrarGastosBalance(objUser, ref msj), RepeaterIngresos, RepeaterGastos);
            }
            else
            {
                objUser = (Entidades.Usuario)Session["UserLogin"];
                objBalance = (Ln_Balance)Session["SessionBalance"];
            }
        }
        private void LeerTabla(DataTable t_ingresos,DataTable t_gastos, Repeater rep_ingresos, Repeater rep_gastos)
        {
            double total_ingresos = 0.00;
            double total_gastos = 0.00;
            try
            {
                rep_ingresos.DataSource = t_ingresos;
                rep_ingresos.DataBind();

                rep_gastos.DataSource = t_gastos;
                rep_gastos.DataBind();

                for (int i = 0; i < t_ingresos.Rows.Count; i++)
                {
                    total_ingresos += (double)t_ingresos.Rows[i]["Monto"];
                }
                lblIngresos.Text = "$" + total_ingresos.ToString();

                for (int i = 0; i < t_gastos.Rows.Count; i++)
                {
                    total_gastos += (double)t_gastos.Rows[i]["Monto"];
                }
                lblIngresos.Text = "$" + total_ingresos.ToString()+".00";
                lblGastos.Text = "$" + total_gastos.ToString()+".00";
                lblBalance.Text = "$" + (total_ingresos - total_gastos).ToString() + ".00";
            }
            catch (Exception ex)
            {

            }
        }
    }
}