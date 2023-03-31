using CapaAccesoDatos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
namespace CapaLogicaNegocio
{
    public class Ln_Usuario
    {
        private Datos objDAL = new Datos();
        Usuario objUsuario = new Usuario();
        SqlCommand comando = new SqlCommand();
        SqlDataReader leer;
        DataTable tabla;

        public Ln_Usuario(string conexion)
        {
            objDAL.cadenaConexion = conexion;
        }

        public Usuario Login(Usuario user, ref string msj, ref Boolean loginCorrecto)
        {
            tabla = new DataTable();
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            comando.CommandText = "Usuario_Login";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre", user.Nom_usuario);
            comando.Parameters.AddWithValue("@passw", user.Contrasena);
            comando.Connection = con;
            leer = comando.ExecuteReader();
            if (leer != null && leer.HasRows)
            {
                tabla.Load(leer);
            }
            if (tabla.Rows.Count == 1)
            {
                msj = "Login Correcto";
                loginCorrecto = true;
                user = GuardarSesionUser(tabla);
            }
            else
            {
                msj = "Login Incorrecto";
                loginCorrecto = false;
                user = null;
            }
            comando.Parameters.Clear();
            con.Close();
            con.Dispose();
            return user;
        }
        public Boolean Registro(Usuario user, ref string msj)
        {
            Boolean resultado = false;
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "Registro_cuenta";
            param.Add(new SqlParameter()
            {
                ParameterName = "@nombre",
                Value = user.Nombre
            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@usuario",
                Value = user.Nom_usuario

            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@contrasena",
                Value = user.Contrasena
            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@email",
                Value = user.Email
            });

            SqlParameter existe_usuario = new SqlParameter("@existe_usuario", SqlDbType.VarChar, 50);
            existe_usuario.Direction = ParameterDirection.Output;
            param.Add(existe_usuario);

            SqlParameter existe_email = new SqlParameter("@existe_email", SqlDbType.VarChar, 50);
            existe_email.Direction = ParameterDirection.Output;
            param.Add(existe_email);

            SqlParameter exito = new SqlParameter("@exito", SqlDbType.VarChar, 50);
            exito.Direction = ParameterDirection.Output;
            param.Add(exito);

            resultado = objDAL.ModificarBDParametros(procedimiento, con, ref msj, param);
            if (exito.Value.ToString() == "El usario ha sido registrado.")
            {
                resultado = true;
                msj = exito.Value.ToString();
            }
            else
            {
                resultado = false;
                msj = existe_usuario.Value.ToString();
                msj += " " + existe_email.Value.ToString();
            }

            con.Close();
            con.Dispose();
            return resultado;
        }
        public string RecuperarContrasena(Usuario user, ref string msj)
        {
            string password = "";

            tabla = new DataTable();
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            comando.CommandText = "RecuperarContrasena";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@email", user.Email);
            comando.Connection = con;
            leer = comando.ExecuteReader();
            if (leer != null && leer.HasRows)
            {
                tabla.Load(leer);
            }
            if (tabla.Rows.Count == 1)
            {
                msj = "Email encontrado";
                password = tabla.Rows[0]["contrasena"].ToString();
            }
            else
            {
                msj = "Email no encontrado";
            }
            comando.Parameters.Clear();
            con.Close();
            con.Dispose();

            return password;

        }
        public Boolean ModificarUsuario(Usuario user, ref string msj)
        {
            Boolean resultado = false;
            SqlConnection con = objDAL.AbrirConexion(ref msj);
            List<SqlParameter> param = new List<SqlParameter>();
            string procedimiento = "ModificarPerfil";
            param.Add(new SqlParameter()
            {
                ParameterName = "@id",
                Value = user.ID
            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@usuario",
                Value = user.Nom_usuario
            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@email",
                Value = user.Email
            });
            param.Add(new SqlParameter()
            {
                ParameterName = "@imagen",
                Value = user.imagenRuta
            });
            resultado = objDAL.ModificarBDParametros(procedimiento, con, ref msj, param);
            con.Close();
            con.Dispose();
            return resultado;
        }
        private Usuario GuardarSesionUser(DataTable lector)
        {
            Usuario temp = new Usuario()
            {
                ID = (int)lector.Rows[0]["id"],
                Nombre = lector.Rows[0]["nombre"].ToString(),
                Email = lector.Rows[0]["email"].ToString(),
                Contrasena = lector.Rows[0]["contrasena"].ToString(),
                Nom_usuario=lector.Rows[0]["usuario"].ToString()
            };
            if (lector.Rows[0]["imagen_ruta"] != DBNull.Value)
            {
                temp.imagenRuta = lector.Rows[0]["imagen_ruta"].ToString();
            }        
            return temp;
        }
    }
}
