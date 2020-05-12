using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;


namespace Negocio.Conexion
{
    public class Conectar
    {
        public static MySqlConnection ObtenerConexion()
        {
            //string strCadConexion = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            string strCadConexion = "Database=tienda;Data Source=127.0.0.1;User Id=root;Password=";

            MySqlConnection con = new MySqlConnection(strCadConexion);

            con.ConnectionString = strCadConexion;
            con.Open();

            return con;


        }
    }
}