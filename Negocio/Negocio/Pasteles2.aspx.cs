using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PasteleriaDelice.Datos;

namespace Negocio
{
    public partial class Pasteles2 : System.Web.UI.Page
    {

        Producto pd = new Producto();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataList1.DataSource = pd.listado();
                DataList1.DataBind();
                Session["pedido"] = DataList1;
                

            }
        }
    }
}