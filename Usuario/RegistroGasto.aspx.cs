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
    public partial class RegistroGasto : System.Web.UI.Page
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
                CargarTiposGastos(objEg.MostrarTiposEgresos(ref msj), DdlTiposEgresos);

            }
            else
            {
                objUser = (Entidades.Usuario)Session["UserLogin"];
                objEg = (Ln_Egresos)Session["SessionEgresos"];
            }

        }

        protected void btnGuardarEgreso_Click(object sender, EventArgs e)
        {
            Egreso egreso = new Egreso()
            {
                Descripcion = txtDescripcion.Text,
                Monto = float.Parse(txtMonto.Text),
                Tipo = Convert.ToInt32(DdlTiposEgresos.SelectedItem.Value),
                Usuario = objUser.ID
            };
            if (objEg.RegistroEgresos(egreso, ref msj))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "ok", "Swal.fire({ title: 'Guardado', text: '" + msj + "', icon: 'success'})", true);
                txtDescripcion.Text = "";
                txtMonto.Text = "";
                CargarTiposGastos(objEg.MostrarTiposEgresos(ref msj), DdlTiposEgresos);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "ok", "Swal.fire({ title: 'No guardado', text: '" + msj + "', icon: 'error'})", true);
            }
        }
        private void CargarTiposGastos(DataTable datos, DropDownList caja)
        {
            try
            {
                if (datos.Rows.Count >= 1)
                {
                    caja.Items.Clear();
                    int i = 0;
                    caja.Items.Add(new ListItem("--Selecciona un tipo gasto--", i.ToString()));
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