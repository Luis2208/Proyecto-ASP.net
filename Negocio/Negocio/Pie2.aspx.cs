﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Negocio
{
    public partial class Pie2 : System.Web.UI.Page
    {
        //MySqlConnection con = new MySqlConnection("Database=tienda;Data Source=127.0.0.1;User Id=root;Password=");

        public DataTable listado()
        {
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT CodigoProducto,Nombre,Precio,Cantidad,Imagen FROM producto WHERE Categoria='Pays'", Conexion.Conectar.ObtenerConexion());
            DataTable tb = new DataTable();
            da.Fill(tb);
            return tb;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataList1.DataSource = listado();
                DataList1.DataBind();
                Session["PEDIDO"] = DataList1;
            }
        }
    }
}