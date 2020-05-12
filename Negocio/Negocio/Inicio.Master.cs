using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Negocio
{
    public partial class Inicio : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = Session["NomUsuario"].ToString();

        }

        protected void Bttn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Login.aspx");
        }

        protected void Bttn2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Registro.aspx");
        }
    }
}