using CapaAccesoDatos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace CapaLogicaNegocio
{
    public class Ln_Balance
    {
        private Datos objDAL = new Datos();
        Usuario objUsuario = new Usuario();
        SqlCommand comando = new SqlCommand();
        SqlDataReader leer;
        DataTable tabla;

        public Ln_Balance(string conexion)
        {
            objDAL.cadenaConexion = conexion;
        }
        public DataTable MostrarIngresosBalance(Usuario user, ref string msj)
        {
            tabla = new DataTable();
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "Ingresos_Balance";
            param.Add(new SqlParameter()
            {
                ParameterName = "@id_user",
                Value = user.ID
            });
            leer = objDAL.EjecutaConsultaDRParametrosProcedimientos(con, procedimiento, ref msj, param);
            if (leer != null && leer.HasRows)
            {
                tabla.Load(leer);
            }
            con.Close();
            con.Dispose();
            return tabla;
        }
        public DataTable MostrarGastosBalance(Usuario user, ref string msj)
        {
            tabla = new DataTable();
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "Egresos_Balance";
            param.Add(new SqlParameter()
            {
                ParameterName = "@id_user",
                Value = user.ID
            });
            leer = objDAL.EjecutaConsultaDRParametrosProcedimientos(con, procedimiento, ref msj, param);
            if (leer != null && leer.HasRows)
            {
                tabla.Load(leer);
            }
            con.Close();
            con.Dispose();
            return tabla;
        }
    }
}
