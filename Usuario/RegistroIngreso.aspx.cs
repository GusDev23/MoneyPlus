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
    public partial class RegistroIngreso : System.Web.UI.Page
    {
        Ln_Ingresos objIng;
        Entidades.Usuario objUser;
        string msj = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ClassConfig temp = new ClassConfig();
                objIng = new Ln_Ingresos(temp.cadenaConexion);
                Session["SessionIngresos"] = objIng;
                objUser = (Entidades.Usuario)Session["UserLogin"];
                CargarTiposIngresos(objIng.MostrarTiposIngresos(ref msj), DdlTiposIngreso);
            }
            else
            {
                objUser = (Entidades.Usuario)Session["UserLogin"];
                objIng = (Ln_Ingresos)Session["SessionIngresos"];
            }
        }

        protected void btnGuardarIngreso_Click(object sender, EventArgs e)
        {
            Ingreso ingreso = new Ingreso()
            {
                Descripcion=txtDescripcion.Text,
                Monto=float.Parse(txtMonto.Text),
                Tipo= Convert.ToInt32(DdlTiposIngreso.SelectedValue),
                Usuario=objUser.ID
            };
            if (objIng.RegistroIngreso(ingreso, ref msj))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "ok", "Swal.fire({ title: 'Guardado', text: '"+msj+"', icon: 'success'})", true);
                txtDescripcion.Text = "";
                txtMonto.Text = "";
                CargarTiposIngresos(objIng.MostrarTiposIngresos(ref msj), DdlTiposIngreso);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "ok", "Swal.fire({ title: 'No guardado', text: '" + msj + "', icon: 'error'})", true);
            }
        }
        private void CargarTiposIngresos(DataTable datos, DropDownList caja)
        {
            try
            {
                if (datos.Rows.Count >= 1)
                {
                    caja.Items.Clear();
                    int i = 0;
                    caja.Items.Add(new ListItem("--Selecciona un tipo ingreso--", i.ToString()));
                    while (i != datos.Rows.Count)
                    {
                        caja.Items.Add(new ListItem(datos.Rows[i]["tipo"].ToString(), datos.Rows[i]["id"].ToString()));
                        i++;
                    }
                }
            }
            catch (Exception ex)
            {
                Session.Contents.RemoveAll();
            }

        }
    }
}