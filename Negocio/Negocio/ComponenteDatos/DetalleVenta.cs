using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PasteleriaDelice.Datos
{
    public class DetalleVenta
    {
        private string codigo;
        private decimal cantidad;
        private decimal precio;
        private decimal subtotal;
        private string codproducto;

        public string Codigo
        {
            get
            {
                return codigo;
            }

            set
            {
                codigo = value;
            }
        }

        public decimal Cantidad
        {
            get
            {
                return cantidad;
            }

            set
            {
                cantidad = value;
            }
        }

        public decimal Precio
        {
            get
            {
                return precio;
            }

            set
            {
                precio = value;
            }
        }

        public decimal Subtotal
        {
            get
            {
                return subtotal;
            }

            set
            {
                subtotal = value;
            }
        }

        public string Codproducto
        {
            get
            {
                return codproducto;
            }

            set
            {
                codproducto = value;
            }
        }
    }
}