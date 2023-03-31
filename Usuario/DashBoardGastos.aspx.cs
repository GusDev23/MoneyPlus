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
using System.Web.Script.Serialization;

namespace WebAppMoneyPlus.Usuario
{
    public partial class DashBoardGastos : System.Web.UI.Page
    {
        Ln_Egresos objEg;
        Entidades.Usuario objUser;
        string msj = "";
        public string dataTable;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClassConfig temp = new ClassConfig();
                objEg = new Ln_Egresos(temp.cadenaConexion);
                Session["SessionEgresos"] = objEg;
                objUser = (Entidades.Usuario)Session["UserLogin"];
                dataTable = ConvertDataTabletoString((objEg.MostrarEgresosGrafico(objUser, ref msj)));
            }
            else
            {
                objUser = (Entidades.Usuario)Session["UserLogin"];
                objEg = (Ln_Egresos)Session["SessionEgresos"];
            }
            LeerTabla(objEg.MostrarEgresos(objUser, ref msj), RepEgresos);
        }
        public string ConvertDataTabletoString(DataTable dt)
        {
            JavaScriptSerializer serializer = new JavaScriptSerializer();

            List<List<object>> rows = new List<List<object>>();
            List<object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new List<object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(dr[col]);
                }
                rows.Add(row);
            }

            return serializer.Serialize(rows);
        }
        private void LeerTabla(DataTable leer, Repeater rep)
        {
            double total = 0.00;
            try
            {
                rep.DataSource = leer;
                rep.DataBind();

                for (int i = 0; i < leer.Rows.Count; i++)
                {
                    total += (double)leer.Rows[i]["monto"];
                }
                lblTotalEgreso.Text = "Total gastos: $" + total.ToString();
            }
            catch (Exception ex)
            {

            }
        }
    }
}