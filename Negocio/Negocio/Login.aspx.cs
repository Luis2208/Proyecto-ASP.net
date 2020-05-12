using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using MySql.Data.Common;
using System.Data;

namespace Negocio
{
    public partial class Login : System.Web.UI.Page
    {

         protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Bttn2_Click(object sender, EventArgs e)
        {
            
        }

       

        protected void BttnEntrarAdmi_Click(object sender, EventArgs e)
        {
            int i_cuenta = 0;

            MySqlCommand cmd = Conexion.Conectar.ObtenerConexion().CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM administradores WHERE NomUsuario='" + txtUsername.Text + "' AND ClaveUsuario='" + txtPass.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);

            i_cuenta = Convert.ToInt32(dt.Rows.Count.ToString());

            if (i_cuenta == 0)
            {
                Response.Write("<script> alert('No eres usuario Registrado, por favor registrate'); </script>");
            }
            else
            {
                Session["NomUsuario"] = txtUsername.Text;
                Response.Redirect("/RegistroProductos.aspx");

            }

            Conexion.Conectar.ObtenerConexion().Close();
        }

        protected void BttnCambiarCl_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Login2.aspx");
        }
    }
}