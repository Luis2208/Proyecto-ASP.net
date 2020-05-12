using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Negocio.Conexion;
using PasteleriaDelice.Datos;

namespace Negocio.ComponenteNegocio
{
    public class VentaFuncionMetodo
    {

        FuncionVenta cdao = new FuncionVenta();
        public string Insertar(Venta cat)
        {
            return cdao.agregar(cat);
        }
        public List<Venta> UltimoEmp()
        {
            FuncionVenta cd = new FuncionVenta();
            return cd.UltimoCod();
        }
    }
}