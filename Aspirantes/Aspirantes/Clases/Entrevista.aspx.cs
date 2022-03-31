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

        public void BuscarAspirante(object sender, EventArgs e)
        {
            ObtieneDatos(buscarTexto.Text);
            ObtieneDatosDos(buscarTexto.Text);
        }

        public void ObtieneDatos(string id)
        {
              

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                string query = "select concat(a.nombre,' ',a.paterno,' ',a.materno) nombre,a.fechaNacimiento fechaNacimiento, " +
                "timestampdiff(year, a.fechaNacimiento, now()) edad,e.desEstadoCivil edoCivil, concat(a.calle, ',', a.numExt, ',', a.cp, ',', a.poblacion) direccion, " +
                "a.telefono telFijo, a.celular telMovil, a.email correo " +
                "from tblcm_aspirantes a " +
                "inner " +
                "join tblestadosciviles e on a.cveEstadoCivil = e.cveEstadoCivil " +
                "where a.idAspirante= "+id+" and a.activo = 'S' ";

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
                }

                con.Dispose();
                con.Close();

            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos: " + e.Message);
                
            }
           
        }

       

        public void ObtieneDatosDos(string id)
        {


            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                string query = "select c.desCarrera licenciatura,e.institucion universidad,e.numPeriodosCursados periodos,promedio promedio from tblcm_escolaridad e " +
                "inner join tblcarreras c on e.cveCarreraAfin = c.cveCarrera " +
                "where e.idAspirante = "+id+" and e.activo = 'S' ";

                MySqlCommand cmd = new MySqlCommand(query, con);


                MySqlDataReader r = cmd.ExecuteReader();

                while (r.Read())
                {
                    licen.Text = r.GetString("licenciatura");
                    uni.Text = r.GetString("universidad");
                    semestre.Text = r.GetString("periodos");
                    porc.Text = r.GetString("promedio");


                    con.Dispose();
                    con.Close();

                }
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);

            }

        }
    }
}