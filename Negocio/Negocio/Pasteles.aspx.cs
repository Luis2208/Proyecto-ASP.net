using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PasteleriaDelice.Datos;
using System.Data;
using MySql.Data.MySqlClient;
using Negocio.Conexion;

namespace Negocio
{
    public partial class Pasteles : System.Web.UI.Page
    {


        Producto pd = new Producto();
        DataTable dtb;
        DataTable carrito = new DataTable();

        public DataTable listado()
        {
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT CodigoProducto,Nombre,Precio,Cantidad,Imagen FROM producto WHERE Categoria='Pasteles'", Conectar.ObtenerConexion());
            DataTable tb = new DataTable();
            da.Fill(tb);
            return tb;
            
        }


        public void CargarDetalle()
        {
            dtb = new DataTable("Carrito");
            dtb.Columns.Add("CodigoProducto", System.Type.GetType("System.String"));
            dtb.Columns.Add("Nombre", System.Type.GetType("System.String"));
            dtb.Columns.Add("Precio", System.Type.GetType("System.Double"));
            dtb.Columns.Add("subtotal", System.Type.GetType("System.Double"));
            dtb.Columns.Add("Cantidad", System.Type.GetType("System.Int32"));
            

            Session["pedido"] = dtb;
        }

        public void AgregarItem(string cod, string nom, double precio)
        {
            double total;
            int cantidad = 1;
            total = precio * cantidad;
            carrito = (DataTable)Session["pedido"];
            DataRow fila = carrito.NewRow();
            fila[0] = cod;
            fila[1] = nom;
            fila[2] = precio;
            fila[3] = (int)cantidad;
            fila[4] = total;
            carrito.Rows.Add(fila);
            Session["pedido"] = carrito;
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataList1.DataSource = listado();
                DataList1.DataBind();
                CargarDetalle();
                LblAgregado.Text = "";
                
            }

            //if (Page.IsPostBack == false)
            //{
            //    listado();
            //    LblAgregado.Text = "";
            //}

        }

    
        protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            //GridView1.PageIndex = e.NewPageIndex;


            //GridView1.DataSource = pd.listado();
            //GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int f = GridView1.SelectedIndex;

            //String CodigoProducto = (GridView1.Rows[f].Cells[1].FindControl("LblCodigo") as Label).Text;
            //String Nombre = (GridView1.Rows[f].Cells[1].FindControl("LblNombre") as Label).Text;
            //String Precio = (GridView1.Rows[f].Cells[1].FindControl("LblPrecio") as Label).Text;

            //HttpCookie dato = new HttpCookie("dato");
            //dato.Values["CodigoProducto"] = CodigoProducto;
            //dato.Values["Nombre"] = Nombre;
            //dato.Values["Precio"] = Precio;

            //Response.Cookies.Add(dato);
            //Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            string cod;
            string des = null, nom = null;
            double precio = 0;
            if (e.CommandName == "SELECCIONAR")
            {
                DataList1.SelectedIndex = e.Item.ItemIndex;

                cod = ((Label)this.DataList1.SelectedItem.FindControl("LblCodigo")).Text;
                des = ((Label)this.DataList1.SelectedItem.FindControl("LblNombre")).Text;
                precio = double.Parse(((Label)this.DataList1.SelectedItem.FindControl("LblPrecio")).Text);
                AgregarItem(cod, des, precio);

                LblAgregado.Text = "Producto Agregado: " + nom + " " + des;
                Session["prueba"] = "Sesión usuario prueba";
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Listado_Comprado.aspx");
        }
    }
}