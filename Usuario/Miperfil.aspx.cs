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
    public partial class Miperfil : System.Web.UI.Page
    {
        Ln_Usuario objUsuario;
        Entidades.Usuario objUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClassConfig temp = new ClassConfig();
                objUsuario = new Ln_Usuario(temp.cadenaConexion);
                Session["SessionLogin"] = objUsuario;
                objUser = (Entidades.Usuario)Session["UserLogin"];
                CargarInfoUser(objUser);
            }
            else
            {
                objUser = (Entidades.Usuario)Session["UserLogin"];
                objUsuario = (Ln_Usuario)Session["SessionLogin"];
            }
        }
        private void CargarInfoUser(Entidades.Usuario user)
        {
            txtEmail.Text = user.Email;
            txtUserName.Text = user.Nom_usuario;
            lblNombre.Text = user.Nombre;
            Image_perfil.ImageUrl = user.imagenRuta;
        }
        bool validarForm()
        {
            if(txtUserName.Text!="" && txtEmail.Text!="")
            {
                return true;
            }
            return false;
        }
        protected void btnGuardarCambios_Click(object sender, EventArgs e)
        {
            string ruta = objUser.imagenRuta;
            string msj = "";
            if (FileUpload1.HasFile)
            {
                string nombreImagen = FileUpload1.FileName;
                ruta = "~/media/img-perfil/" + nombreImagen;
            }
            if (validarForm())
            {                   
                Entidades.Usuario user = new Entidades.Usuario()
                {
                    ID=objUser.ID,
                    Nombre=objUser.Nombre,
                    Nom_usuario=txtUserName.Text,
                    Contrasena=objUser.Contrasena,
                    Email =txtEmail.Text,
                    imagenRuta = ruta
                };
                if (objUsuario.ModificarUsuario(user, ref msj))
                {
                    FileUpload1.SaveAs(Server.MapPath(ruta));
                    ScriptManager.RegisterStartupScript(this, GetType(), "ok", "Swal.fire({ title: 'Datos Actualizados', text: 'El perfil de usuario ha sido actualizado', icon: 'success'})", true);
                    Session["UserLogin"] = user;
                    CargarInfoUser(user);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "ok", "Swal.fire({title: '¡Error!',text: 'Lo sentimos, algo ocurrio mal',icon: 'warning'})", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "ok", "Swal.fire({title: '¡Datos incompletos!',text: 'Por favor, ingrese los datos correctamente.',icon: 'warning'})", true);
                CargarInfoUser(objUser);

            }

        }
    }
}