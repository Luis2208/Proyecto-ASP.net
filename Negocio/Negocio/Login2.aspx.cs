using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data.Types;


namespace Negocio
{
    public partial class Login2 : System.Web.UI.Page
    {
        //private string ConexionBD = "Database=tienda;Data Source=127.0.0.1;User Id=root;Password=";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BttnCambiarCl_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Login.aspx");
        }

        protected void BttnEntrarCli_Click(object sender, EventArgs e)
        {
            int i_cuenta = 0;
           
            MySqlCommand cmd = Conexion.Conectar.ObtenerConexion().CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM clientes WHERE NomUsuario='" + txtUsername.Text + "' AND ClaveUsuario='" + txtPass.Text + "'";
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
                Response.Redirect("/Default.aspx");
                
            }

            Conexion.Conectar.ObtenerConexion().Close();
        }
    }
}