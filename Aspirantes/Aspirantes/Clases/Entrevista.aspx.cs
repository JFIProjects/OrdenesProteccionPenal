using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aspirantes.Clases
{
    public partial class Entrevista : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        public void PreparaCarga(object sender, EventArgs e)
        {
            String b;
            b = busqueda.Text;
            b = (b.Split(':'))[0];

            Session["idaspirante"] = b;

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                string query = "select concat(a.nombre,' ',a.paterno,' ',a.materno) nombre,a.fechaNacimiento fechaNacimiento, " +
                "timestampdiff(year, a.fechaNacimiento, now()) edad,e.desEstadoCivil edoCivil, concat(a.calle, ',', a.numExt, ',', a.cp, ',', a.poblacion) direccion, " +
                "a.telefono telFijo, a.celular telMovil, a.email correo, " +
                "c.desCarrera licenciatura,es.institucion universidad,es.numPeriodosCursados periodos,promedio promedio " +
                "from tblcm_aspirantes a " +
                "inner " +
                "join tblestadosciviles e on a.cveEstadoCivil = e.cveEstadoCivil " +
                "inner join tblcm_escolaridad es on a.idAspirante = es.idAspirante " +
                "inner join tblcarreras c on es.cveCarreraAfin = c.cveCarrera " +
                "where a.idAspirante= " + b + " and a.activo = 'S' ";

                MySqlCommand cmd = new MySqlCommand(query, con);


                MySqlDataReader r = cmd.ExecuteReader();

                while (r.Read())
                {
                    nombre.Text = r.GetString("nombre");
                    fecNac.Text = r.GetString("fechaNacimiento");
                    edad.Text = r.GetString("edad");
                    edoCivil.Text = r.GetString("edoCivil");
                    direccion.Text = r.GetString("direccion");
                    telFijo.Text = r.GetString("telFijo");
                    telMovil.Text = r.GetString("telMovil");
                    correo.Text = r.GetString("correo");
                    licen.Text = r.GetString("licenciatura");
                    uni.Text = r.GetString("universidad");
                    semestre.Text = r.GetString("periodos");
                    porc.Text = r.GetString("promedio");
                }

                con.Dispose();
                con.Close();

            }
            catch (MySqlException ex)
            {
                Debug.WriteLine("Error al obtener los datos: " + ex.Message);

            }
            panelBusqueda.Visible = false;
            panelExpediente.Visible = true;
            tag.Text = nombre.Text;

        }

       

        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> BuscaExpediente(string prefixText, int count)
        {

            List<string> exp = new List<string>();
            MySqlConnection con = null;

            try
            {
                con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                string query = "SELECT concat(idaspirante,': ', nombre, ' ', paterno,' ', materno) tag " +
                                  "FROM die_administrativo_aspirantes.tblcm_aspirantes " +
                                  "WHERE " +
                                  "(concat(nombre, ' ', paterno, ' ', materno) like @nomexp " +
                                  ") ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd.Parameters.AddWithValue("@nomexp", "%" + prefixText + "%");
                

                MySqlDataReader r = cmd.ExecuteReader();

                while (r.Read())
                {
                    exp.Add(r.GetString("tag"));
                }

                return exp;

            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al traer la lista de busqueda: " + e.Message);
                return null;
            }
            finally
            {
                con.Dispose();
                con.Close();
            }
        }

        public void BorraBusqueda(object sender, EventArgs e)
        {
            nombre.Text = "";
            fecNac.Text = "";
            edad.Text = "";
            edoCivil.Text = "";
            direccion.Text = "";
            telFijo.Text = "";
            telMovil.Text = "";
            correo.Text = "";
            licen.Text = "";
            uni.Text = "";
            semestre.Text = "";
            porc.Text = "";
            panelExpediente.Visible = false;
            panelBusqueda.Visible = true;
            busqueda.Text = "";
        }
    }
}