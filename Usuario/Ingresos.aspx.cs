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
    public partial class Ingresos : System.Web.UI.Page
    {
        Ln_Ingresos objIng;
        Entidades.Usuario objUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClassConfig temp = new ClassConfig();
                objIng = new Ln_Ingresos(temp.cadenaConexion);
                Session["SessionIngresos"] = objIng;
                objUser = (Entidades.Usuario)Session["UserLogin"];
            }
            else
            {
                objUser = (Entidades.Usuario)Session["UserLogin"];
                objIng = (Ln_Ingresos)Session["SessionIngresos"];
            }
        }
        private void LeerTabla(DataTable leer, Repeater rep)
        {
            try
            {
                rep.DataSource = leer;
                rep.DataBind();
            }
            catch (Exception)
            {
                Session.Contents.RemoveAll();
                Response.Redirect("../Login.aspx");
            }
        }
    }
}