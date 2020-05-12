using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using Negocio.Conexion;

namespace Negocio
{
    public partial class Clientes : System.Web.UI.Page
    {
        
        MySqlConnection con = new MySqlConnection("Database=db_a4f175_tienda;Data Source=MYSQL5015.site4now.net;User Id=a4f175_tienda;Password=fany1234");
        public DataTable listado3()
        {
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM clientes", Conectar.ObtenerConexion());
            DataTable tb = new DataTable();
            da.Fill(tb);
            return tb;

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = listado3();
                GridView1.DataBind();
                listado3();
                
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }
    }
}