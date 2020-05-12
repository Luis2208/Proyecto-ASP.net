using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using MySql.Data;
using MySql.Data.Common;
using System.Data;
using Negocio.Conexion;

namespace PasteleriaDelice.Datos
{
    
    
    public class Producto
    {
        private int CodigoProducto;
        private String Nombre;
        private String Categoria;
        private Double Precio;
        private int Cantidad;
        private String Imagen;

        //MySqlConnection con = new MySqlConnection("Database=tienda;Data Source=127.0.0.1;User Id=root;Password=");
        
        public DataTable listado()
        {
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT CodigoProducto,Nombre,Precio,Cantidad,Imagen FROM producto WHERE Categoria='Pasteles'", Conectar.ObtenerConexion());
            DataTable tb = new DataTable();
            da.Fill(tb);
            return tb;
        }



        public Producto(int CodigoProducto, String Nombre, String Categoria, Double Precio, int Cantidad, String Imagen)
        {
            this.CodigoProducto = CodigoProducto;
            this.Nombre = Nombre;
            this.Categoria = Categoria;
            this.Precio = Precio;
            this.Cantidad = Cantidad;
            this.Imagen = Imagen;
        }

        public Producto()
        {

        }

        public int codigoProducto
        {
            get
            {
                return CodigoProducto;
            }
            set
            {
                CodigoProducto = value;
            }
        }

        public String nombre
        {
            get
            {
                return Nombre;
            }
            set
            {
                Nombre = value;
            }
        }

        public String categoria
        {
            get
            {
                return Categoria;
            }
            set
            {
                Categoria = value;
            }
        }

        public Double precio
        {
            get
            {
                return Precio;
            }
            set
            {
                Precio = value;
            }
        }

        public int cantidad
        {
            get
            {
                return Cantidad;
            }
            set
            {
                Cantidad = value;
            }
        }

        public String imagen
        {
            get
            {
                return Imagen;
            }
            set
            {
                Imagen = value;
            }
        }
    }
}