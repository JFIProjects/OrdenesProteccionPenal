using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OrdenesProteccionPenal.Vistas
{
    public partial class MenuInterno : System.Web.UI.Page
    {
        string query;
        MySqlCommand cmd;
    

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userpass"] is null)
                {
                    Response.Redirect("Login.aspx");                  
                }
                CargarCatalogos();
            }
            else
            {

            }
        }

        public void CargarCatalogos()
        {
            MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
            con.Open();
            query = "select * from die_ordenes_proteccion_penal.tblcatmedidas";
            cmd = new MySqlCommand(query, con);
            medidas_protec.DataSource = cmd.ExecuteReader();
            medidas_protec.DataTextField = "desMedida";
            medidas_protec.DataValueField = "id";
            medidas_protec.DataBind();
            con.Close();
            con.Dispose();
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        public void MostrarSolicitud(object sender, EventArgs e)
        {
            contenido_orden.Visible = true;
            contenido_victima.Visible = false;
            contenido_agresor.Visible = false;
            contenido_seguimiento.Visible = false;
        }

        public void MostrarVictima(object sender, EventArgs e)
        {
            contenido_orden.Visible = false;
            contenido_victima.Visible = true;
            contenido_agresor.Visible = false;
            contenido_seguimiento.Visible = false;
        }

        public void MostrarAgresor(object sender, EventArgs e)
        {
            contenido_orden.Visible = false;
            contenido_victima.Visible = false;
            contenido_agresor.Visible = true;
            contenido_seguimiento.Visible = false;
        }

        public void MostrarSeguimiento(object sender, EventArgs e)
        {
            contenido_orden.Visible = false;
            contenido_victima.Visible = false;
            contenido_agresor.Visible = false;
            contenido_seguimiento.Visible = true;
        }
        public void agregarHijo(object sender, EventArgs e)
        {
            mascara.Visible = true;
        }
    }
}