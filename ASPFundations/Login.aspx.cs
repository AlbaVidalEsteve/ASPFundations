using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPFundations
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["Username"] = "invitado";
            }

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // Validar credenciales
            if (username == "admin" && password == "12345")
            {
                // Guardar el nombre de usuario en la sesión
                Session["Username"] = username;

                // Enviar alert
                ClientScript.RegisterStartupScript(this.GetType(), "PopupScript",
                    "alert('¡Login exitoso! Bienvenido, " + username + "');", true);

                // Redirigir después de un corto retraso para mostrar el alert
                Response.AddHeader("REFRESH", "1;URL=Default.aspx"); // 1 segundo de espera antes de redirigir

                // Borrar mensaje de error
                LabelError.Text = "";
            }
            else
            {
                // Mostrar mensaje de error
                LabelError.Text = "Usuario o contraseña incorrectos.";
            }
        }
    }
}