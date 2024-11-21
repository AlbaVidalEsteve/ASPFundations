using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPFundations
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListBoxDias.Items.Add("Lunes");
                ListBoxDias.Items.Add("Martes");
                ListBoxDias.Items.Add("Miercoles");
                ListBoxDias.Items.Add("Jueves");
                ListBoxDias.Items.Add("Viernes");
                ListBoxDias.Items.Add("Sabado");
                ListBoxDias.Items.Add("Domingo");
            }
        }
        protected void ButtonProbar_Click(object sender, EventArgs e)
        {
            ButtonProbar.Text = TextBoxNombre.Text;
            TextBoxNombre.Text = "";
        }

        protected void ListBoxDias_SelectedIndexChanged(object sender, EventArgs e)
        {
            ButtonDias.Text = ListBoxDias.SelectedValue;
        }

        protected void ButtonDias_Click(object sender, EventArgs e)
        {

        }




    }
}