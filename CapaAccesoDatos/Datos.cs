using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
namespace CapaAccesoDatos
{
    public class Datos
    {
        public string cadenaConexion { get; set; }
        public SqlConnection AbrirConexion(ref string mensaje)
        {
            SqlConnection conexion = new SqlConnection();
            conexion.ConnectionString = cadenaConexion;
            try
            {
                conexion.Open();
                mensaje = "Conexion abierta";
            }
            catch (Exception m)
            {
                conexion = null;
                mensaje = "Error" + m.Message;
            }
            return conexion;
        }
        public Boolean ModificarBDParametros(string sentenciaSQL, SqlConnection conexion,
            ref string msj, List<SqlParameter> parametros)
        {
            SqlCommand comando = null;
            Boolean salida = false;
            if (conexion != null)
            {
                comando = new SqlCommand();
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = sentenciaSQL;
                comando.Connection = conexion;
                foreach (var item in parametros)
                {
                    comando.Parameters.Add(item);
                }
                try
                {
                    comando.ExecuteNonQuery();
                    msj = "Operacion correcta";
                    salida = true;
                }
                catch (Exception r)
                {
                    salida = false;
                    msj = r.ToString();
                }
                conexion.Close();
                conexion.Dispose();
            }
            else
                msj += "  No hay conexion con BD";
            return salida;
        }
        public Boolean ModificarBDParametrosSalida(string sentenciaSQL, SqlConnection conexion, ref string msj,
            List<SqlParameter> parametros, ref int id)
        {
            SqlCommand comando = null;
            Boolean salida = false;
            if (conexion != null)
            {
                comando = new SqlCommand();
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = sentenciaSQL;
                comando.Connection = conexion;
                foreach (var item in parametros)
                {
                    comando.Parameters.Add(item);
                }
                try
                {
                    comando.ExecuteNonQuery();
                    msj = "Operacion correcta";
                    id = Convert.ToInt32(comando.Parameters["@idSol"].Value);
                    salida = true;
                }
                catch (Exception r)
                {
                    salida = false;
                    msj = r.ToString();
                }
                conexion.Close();
                conexion.Dispose();
            }
            else
                msj += "  No hay conexion con BD";
            return salida;
        }
        public SqlDataReader EjecutaConsultaDRParametros(SqlConnection cnab, string consulta, ref string msj, List<SqlParameter> parametros)
        {
            SqlDataReader salidacaja = null;
            SqlCommand comando = null;
            if (cnab != null)
            {
                comando = new SqlCommand();
                comando.CommandText = consulta;
                comando.Connection = cnab;
                foreach (var item in parametros)
                {
                    comando.Parameters.Add(item);
                }
                try
                {
                    salidacaja = comando.ExecuteReader();
                    msj = "Consulta Correcta";
                }
                catch (Exception x)
                {
                    salidacaja = null;
                    msj = "Error" + x.Message;
                }
            }
            else
            {
                msj = "No hay Conexion a la BD";
            }
            return salidacaja;
        }
        public SqlDataReader EjecutaConsultaDRParametrosProcedimientos(SqlConnection cnab, string procedimiento,
            ref string msj, List<SqlParameter> parametros)
        {
            SqlDataReader salidacaja = null;
            if (cnab != null)
            {
                SqlCommand comand = new SqlCommand();
                comand.CommandText = procedimiento;
                comand.CommandType = CommandType.StoredProcedure;
                comand.Connection = cnab;
                foreach (var item in parametros)
                {
                    comand.Parameters.Add(item);
                }
                try
                {
                    salidacaja = comand.ExecuteReader();
                    msj = "Consulta Correcta";
                }
                catch (Exception x)
                {
                    salidacaja = null;
                    msj = "Error" + x.Message;
                }
            }
            else
            {
                msj = "No hay Conexion a la BD";
            }
            return salidacaja;
        }
    }
}
