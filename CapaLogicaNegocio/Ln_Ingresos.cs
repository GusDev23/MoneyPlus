using CapaAccesoDatos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace CapaLogicaNegocio
{
    public class Ln_Ingresos
    {
        private Datos objDAL = new Datos();
        Usuario objUsuario = new Usuario();
        SqlCommand comando = new SqlCommand();
        SqlDataReader leer;
        DataTable tabla;

        public Ln_Ingresos(string conexion)
        {
            objDAL.cadenaConexion = conexion;
        }

        public DataTable MostrarIngresos(Usuario user, ref string msj)
        {
            tabla = new DataTable();
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "Mostrar_ingresos";
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
        public DataTable MostrarIngresosGrafico(Usuario user, ref string msj)
        {
            tabla = new DataTable();
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "Mostrar_ingresos_grafico";
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
        public DataTable MostrarTiposIngresos(ref string msj)
        {
            tabla = new DataTable();
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "MostraTiposIngresos";
            leer = objDAL.EjecutaConsultaDRParametrosProcedimientos(con, procedimiento, ref msj, param);
            if (leer != null && leer.HasRows)
            {
                tabla.Load(leer);
            }
            con.Close();
            con.Dispose();
            return tabla;
        }
        public Boolean RegistroIngreso(Ingreso ingreso, ref string msj)
        {
            Boolean resultado = false;
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "Registro_ingreso";
            param.Add(new SqlParameter()
            {
                ParameterName = "@monto",
                Value = ingreso.Monto
            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@desc",
                Value = ingreso.Descripcion

            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@tipo",
                Value = ingreso.Tipo
            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@idUser",
                Value = ingreso.Usuario
            });

            SqlParameter existe_ingreso = new SqlParameter("@existe_ingreso", SqlDbType.VarChar, 150);
            existe_ingreso.Direction = ParameterDirection.Output;
            param.Add(existe_ingreso);

            SqlParameter exito = new SqlParameter("@exito", SqlDbType.VarChar, 50);
            exito.Direction = ParameterDirection.Output;
            param.Add(exito);

            resultado = objDAL.ModificarBDParametros(procedimiento, con, ref msj, param);
            if (exito.Value.ToString() == "El ingreso ha sido registrado.")
            {
                resultado = true;
                msj = exito.Value.ToString();
            }
            else
            {
                resultado = false;
                msj = existe_ingreso.Value.ToString();
            }

            con.Close();
            con.Dispose();
            return resultado;
        }
    }
}
