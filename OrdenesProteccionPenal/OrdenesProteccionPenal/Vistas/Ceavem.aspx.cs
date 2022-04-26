using MySql.Data.MySqlClient;
using OrdenesProteccionPenal.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OrdenesProteccionPenal.Vistas
{
    public partial class Ceavem : System.Web.UI.Page
    {
        string query;
        MySqlCommand cmd;

        List<Elemento> listResultados;
        List<Elemento> listMedidas;
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

        protected void ButtonAgregar_Click(object sender, EventArgs e)
        {
            List<Elemento> formu = new List<Elemento>();

            List<Elemento> lista = new List<Elemento>();
            DateTime fecha = Convert.ToDateTime(inicio.Text);
            string resultado_evaluacion = espec_otro.Text ;

            if (listResultados == null)
            {
                listResultados = new List<Elemento>();
            }

            formu = (List<Elemento>)ViewState["evaluacion"];
            if (formu == null)
            {
                formu = lista;
            }
            formu
                .Add(new Elemento()
            {
                Fecha = fecha,
                Resultado = resultado_evaluacion

            });

            ViewState["evaluacion"] = formu;

            llenatablaEvaluacion.DataSource = formu;
            llenatablaEvaluacion.DataBind();
            limpiarCamposEvaluacion();

        }


        protected void limpiarCamposEvaluacion() {
            inicio.Text = "";
            espec_otro.Text = "";
        }

        protected void paginadorEvaluacion(object sender, GridViewPageEventArgs e)
        {
            llenatablaEvaluacion.PageIndex = e.NewPageIndex;
        }


    }
}