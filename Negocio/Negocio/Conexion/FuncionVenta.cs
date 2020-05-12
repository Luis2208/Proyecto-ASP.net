using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using PasteleriaDelice.Datos;
using MySql.Data.Types;
using System.Data;

namespace Negocio.Conexion
{
    public class FuncionVenta
    {
        public string agregar(Venta pd)
        {
            string retorno = "";

            try
            {

                MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO venta (CodigoVenta,Fecha,Subtotal,Igv,Total,Cliente)" +
                    "values('{0}','{1}','{2}','{3}','{4}','{5}')", pd.Codigo, pd.Fecha, pd.Subtotal, pd.Igv, pd.Total, pd.Cliente), Conectar.ObtenerConexion());
                //retorno = comando.ExecuteNonQuery();
                int registros;
                registros = comando.ExecuteNonQuery();
                if (registros == 1)
                {
                    retorno = "OK";
                }
                else
                {
                    retorno = "Error al Insertar";
                }
            }
            catch (MySqlException e)
            {
                System.Console.Write(e);
            }
            return retorno;
        }

        public string contador;
        public List<Venta> UltimoCod()
        {
            List<Venta> Coleccion = new List<Venta>();
            try
            {
                MySqlCommand sqlcmd = new MySqlCommand("select count(CodigoVenta),max (CodigoVenta) from venta", Conectar.ObtenerConexion());
                sqlcmd.CommandType = CommandType.Text;

                MySqlDataReader PaTable = sqlcmd.ExecuteReader();

                while (PaTable.Read())
                {
                    this.contador = Convert.ToString(PaTable.GetInt32(0));
                    if (contador == "0")
                    {
                        Coleccion.Add(new Venta(PaTable.GetInt32(0).ToString()));

                    }
                    else
                    {
                        Coleccion.Add(new Venta(PaTable.GetString(1)));

                    }

                }
            }
            catch (MySqlException E)
            {

            }
            return Coleccion;
        }

    }
}