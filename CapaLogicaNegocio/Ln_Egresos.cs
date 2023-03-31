using CapaAccesoDatos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace CapaLogicaNegocio
{
    public class Ln_Egresos
    {
        private Datos objDAL = new Datos();
        Usuario objUsuario = new Usuario();
        SqlCommand comando = new SqlCommand();
        SqlDataReader leer;
        DataTable tabla;

        public Ln_Egresos(string conexion)
        {
            objDAL.cadenaConexion = conexion;
        }

        public DataTable MostrarEgresos(Usuario user, ref string msj)
        {
            tabla = new DataTable();
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "Mostrar_egresos";
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
        public DataTable MostrarEgresosGrafico(Usuario user, ref string msj)
        {
            tabla = new DataTable();
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "Mostrar_egresos_grafico";
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
        public DataTable MostrarTiposEgresos(ref string msj)
        {
            tabla = new DataTable();
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "MostraTiposEgresos";
            leer = objDAL.EjecutaConsultaDRParametrosProcedimientos(con, procedimiento, ref msj, param);
            if (leer != null && leer.HasRows)
            {
                tabla.Load(leer);
            }
            con.Close();
            con.Dispose();
            return tabla;
        }
        public Boolean RegistroEgresos(Egreso egreso, ref string msj)
        {
            Boolean resultado = false;
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "Registro_egreso";
            param.Add(new SqlParameter()
            {
                ParameterName = "@monto",
                Value = egreso.Monto
            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@desc",
                Value = egreso.Descripcion

            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@tipo",
                Value = egreso.Tipo
            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@idUser",
                Value = egreso.Usuario
            });

            SqlParameter existe_egreso = new SqlParameter("@existe_egreso", SqlDbType.VarChar, 150);
            existe_egreso.Direction = ParameterDirection.Output;
            param.Add(existe_egreso);

            SqlParameter exito = new SqlParameter("@exito", SqlDbType.VarChar, 50);
            exito.Direction = ParameterDirection.Output;
            param.Add(exito);

            resultado = objDAL.ModificarBDParametros(procedimiento, con, ref msj, param);
            if (exito.Value.ToString() == "El gasto ha sido registrado.")
            {
                resultado = true;
                msj = exito.Value.ToString();
            }
            else
            {
                resultado = false;
                msj = existe_egreso.Value.ToString();
            }

            con.Close();
            con.Dispose();
            return resultado;
        }
    }
}
