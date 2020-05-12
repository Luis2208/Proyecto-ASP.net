using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Negocio.Conexion;
using PasteleriaDelice.Datos;

namespace Negocio.ComponenteNegocio
{
    public class DetalleVentaFuncionMetodo
    {
        FuncionDetalleVenta cdao = new FuncionDetalleVenta();
        public string Insertar(DetalleVenta cat)
        {
            return cdao.agregar(cat);
        }
    }
}