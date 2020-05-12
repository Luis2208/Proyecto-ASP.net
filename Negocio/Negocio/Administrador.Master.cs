using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Negocio
{
    public partial class Administrador1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblAdmin.Text = Session["NomUsuario"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Remove("NomUsuario");
            Response.Redirect("/Login.aspx");
        }
    }
}