using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using CapaLogicaNegocio;
namespace WebAppMoneyPlus.Usuario
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        Entidades.Usuario objUsuario;
        string msj = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            objUsuario = (Entidades.Usuario)Session["UserLogin"];
            nombreUsuario.Text = objUsuario.Nombre;
        }

        protected void btnCerrarSesion_Click1(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Response.Redirect("../InicioSesion/InicioSesion.aspx");
        }
    }
}