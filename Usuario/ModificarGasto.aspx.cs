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
    public partial class ModificarGasto : System.Web.UI.Page
    {
        Ln_Egresos objEg;
        Entidades.Usuario objUser;
        string msj = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClassConfig temp = new ClassConfig();
                objEg = new Ln_Egresos(temp.cadenaConexion);
                Session["SessionEgresos"] = objEg;
                objUser = (Entidades.Usuario)Session["UserLogin"];
                LeerTabla(objEg.MostrarEgresos(objUser, ref msj), gdvGastos);
            }
            else
            {
                objUser = (Entidades.Usuario)Session["UserLogin"];
                objEg = (Ln_Egresos)Session["SessionEgresos"];
            }
        }
        private void LeerTabla(DataTable leer, GridView tabla)
        {
            try
            {
                if (leer.Rows.Count > 0)
                {
                    tabla.DataSource = leer;
                    tabla.DataBind();
                }
            }
            catch (Exception)
            {
                Session.Contents.RemoveAll();
                Response.Redirect("Login.aspx");
            }


        }
        protected void GridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[1].Visible = false;
        }
        protected void gdvGastos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}