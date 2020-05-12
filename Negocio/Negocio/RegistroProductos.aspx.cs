using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace Negocio
{
    public partial class RegistroProductos : System.Web.UI.Page
    {
        //private string ConexionBD = "Database=tienda;Data Source=127.0.0.1;User Id=root;Password=";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //GridView1.DataSource = listado2();
                //GridView1.DataBind();
                listado2();
                
            }
        }
        public DataTable listado2()
        {
            //MySqlConnection conexion = new MySqlConnection(this.ConexionBD);
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM producto ", Conexion.Conectar.ObtenerConexion());
            DataTable bt = new DataTable();
            da.Fill(bt);
            Conexion.Conectar.ObtenerConexion().Close();
            GridView1.DataSource = bt;
            GridView1.DataBind();
            return bt;
        }

        public void limpiar()
        {
            TxtBxCantidad.Text = "";
            txtNombre.Text = "";
            txtPrecio.Text = "";
            DropDownList1.SelectedIndex = 0;
            imgImagen.ImageUrl = "";


        }

        protected void BttnGuardar_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string path = CargarImagen();
                string Imagen = path;
                string consultaBD = "INSERT INTO producto(Nombre,Categoria,Precio,Cantidad, Imagen) VALUES('" + txtNombre.Text + "','" + DropDownList1.Text + "','" + txtPrecio.Text + "','" + TxtBxCantidad.Text + "','" + Imagen + "')";
                //MySqlConnection conexion = new MySqlConnection(this.ConexionBD);
                MySqlCommand mc = new MySqlCommand(consultaBD, Conexion.Conectar.ObtenerConexion());
                //conexion.Open();
                mc.ExecuteNonQuery();
                Conexion.Conectar.ObtenerConexion().Close();
                Response.Write("<script> alert('Registro guardado correctamente'); </script>");
                txtNombre.Text = "";
                txtPrecio.Text = "";
                DropDownList1.SelectedIndex = 0;
                TxtBxCantidad.Text = "";
                listado2();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;


            GridView1.DataSource = listado2();
            GridView1.DataBind();
        }

        private string CargarImagen()
        {
            //============================Carga de archivo========================================
            Boolean fileOK = false;
            String path = Server.MapPath("~/imagenes/");

            if (FileFoto.HasFile)
            {
                String fileExtension = System.IO.Path.GetExtension(FileFoto.FileName).ToLower();
                String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOK = true;
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    FileFoto.PostedFile.SaveAs(path + FileFoto.FileName);
                    return "imagenes/" + FileFoto.FileName;
                }
                catch (Exception ex)
                {
                    Response.Write("<script> alert('No se pudo cargar el archivo'); </script>");
                    return path = "";
                }
            }
            else
            {
                Response.Write("<script> alert('Tipo de archivo no aceptado'); </script>");
                return path = "";
            }


            //====================================================================================
        }

        protected void BttnBus_Click(object sender, EventArgs e)
        {
            bool ban = false;
            string consultaBD = "SELECT * FROM producto WHERE CodigoProducto=" + txtbxMosBus.Text;
            //MySqlConnection conexion = new MySqlConnection(this.ConexionBD);
            MySqlDataAdapter mda = new MySqlDataAdapter(consultaBD, Conexion.Conectar.ObtenerConexion());

            DataSet ds = new DataSet();
            mda.Fill(ds, "producto");
            foreach (DataRow renglon in ds.Tables[0].Rows)
            {
                if (renglon["CodigoProducto"].ToString() == txtbxMosBus.Text)
                {
                    txtNombre.Text = renglon["Nombre"].ToString();
                    DropDownList1.Text = renglon["Categoria"].ToString();
                    txtPrecio.Text = renglon["Precio"].ToString();
                    TxtBxCantidad.Text = renglon["Cantidad"].ToString();
                    imgImagen.ImageUrl = renglon["Imagen"].ToString();

                    ban = true;
                }

            }
            if (!ban)
            {
                Response.Write("<script> alert('El registro no existe'); </script>");
                listado2();
            }
        }

        protected void BttnEliminar_Click(object sender, EventArgs e)
        {
            bool ban = false;
            string consultaBD = "SELECT * FROM producto";
            //MySqlConnection conexion = new MySqlConnection(this.ConexionBD);
            MySqlDataAdapter mda = new MySqlDataAdapter(consultaBD, Conexion.Conectar.ObtenerConexion());

            DataSet ds = new DataSet();
            mda.Fill(ds, "producto");
            foreach (DataRow renglon in ds.Tables[0].Rows)
            {
                if (renglon["CodigoProducto"].ToString() == txtbxMosBus.Text)
                {
                    ban = true;
                }

            }
            if (ban)
            {
                consultaBD = "DELETE FROM producto WHERE CodigoProducto=" + txtbxMosBus.Text;
                MySqlCommand mc = new MySqlCommand(consultaBD, Conexion.Conectar.ObtenerConexion());
                //conexion.Open();
                mc.ExecuteNonQuery();
                Conexion.Conectar.ObtenerConexion().Close();
                listado2();
                limpiar();
            }
            else
            {
                Response.Write("<script> alert('El registro no existe'); </script>");
                listado2();
                limpiar();
            }
        }

        protected void BttnModificar_Click(object sender, EventArgs e)
        {
            string path = CargarImagen();
            string foto;
            if (path == "")
            {
                foto = imgImagen.ImageUrl;
            }
            else
            {
                foto = path;
            }
            string consultaBD = "UPDATE producto SET Nombre='" + txtNombre.Text + "', Categoria='" + DropDownList1.Text + "', Precio='" + txtPrecio.Text + "', Cantidad='" + TxtBxCantidad + "', Imagen='" + foto + "' WHERE CodigoProducto=" + txtbxMosBus.Text;
            //MySqlConnection conexion = new MySqlConnection(this.ConexionBD);
            MySqlCommand mc = new MySqlCommand(consultaBD, Conexion.Conectar.ObtenerConexion());
            //conexion.Open();
            mc.ExecuteNonQuery();
            Conexion.Conectar.ObtenerConexion().Close();
            listado2();
            limpiar();
            Response.Write("<script> alert('El registro se actualizo correctamente'); </script>");
        }
    }
}