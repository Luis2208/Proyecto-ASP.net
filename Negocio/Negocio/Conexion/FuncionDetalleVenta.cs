using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using PasteleriaDelice.Datos;

namespace Negocio.Conexion
{
    public class FuncionDetalleVenta
    {
        public string agregar(DetalleVenta pd)
        {
            string retorno = "";

            try
            {

                MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO detalleventa (CodigoVenta,Cantidad,Precio,SubTotal,CodigoProducto)" +
                    "values('{0}','{1}','{2}','{3}','{4}')", pd.Codigo, pd.Cantidad,pd.Precio, pd.Subtotal, pd.Codproducto), Conectar.ObtenerConexion());
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
    }
}