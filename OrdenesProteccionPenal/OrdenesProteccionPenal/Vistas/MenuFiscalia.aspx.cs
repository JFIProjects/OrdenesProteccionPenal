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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userpass"] is null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
            else
            {

            }
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
    }
}