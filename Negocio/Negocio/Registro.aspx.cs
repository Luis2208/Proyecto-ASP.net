using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Negocio
{
    public partial class Registro : System.Web.UI.Page
    {

        private string ConexionBD = "Database=db_a4f175_tienda;Data Source=MYSQL5015.site4now.net;User Id=a4f175_tienda;Password=fany1234";


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BttnSave_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
             
                string consultaBD = "INSERT INTO clientes(NomUsuario,ApeUsuario,CiudUsuario,Correo,Telefono,ClaveUsuario) VALUES('" + TxtBxNombre.Text + "','" + TxtBxApellidos.Text + "','" + TxtBxCiudad.Text + "','" + TxtBxCorreo.Text + "','" +TxtBxTele.Text+"','"+TxtBxConfirma.Text+ "')";
                //MySqlConnection conexion = new MySqlConnection(this.ConexionBD);
                MySqlCommand mc = new MySqlCommand(consultaBD, Conexion.Conectar.ObtenerConexion());
                //conexion.Open();
                mc.ExecuteNonQuery();
                Conexion.Conectar.ObtenerConexion().Close();
                Response.Write("<script> alert('Registro guardado correctamente'); </script>");
                TxtBxNombre.Text = "";
                TxtBxApellidos.Text = "";
                TxtBxCiudad.Text="";
                TxtBxCorreo.Text = "";
                TxtBxTele.Text = "";
                TxtBxConfirma.Text = "";
                TxtBxContraseña.Text = "";
            }
        }
        
        protected void BttnCancelar_Click(object sender, EventArgs e)
        {

            //Response.Write("<script> confirm('Desea Dejar de Registrarse?');</script>");
            Response.Redirect("/Default.aspx");

        }
    }
}