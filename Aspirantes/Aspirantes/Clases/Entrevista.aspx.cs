using Aspirantes.Modelos;
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
            if (!IsPostBack)
            {
                obtenerCatalogo();
            }
            else
            {

            }
            selected_tab.Value = Request.Form[selected_tab.UniqueID];

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
                string query = "select concat(a.nombre,' ',a.paterno,' ',a.materno) nombre, a.fechaNacimiento fechaNacimiento, " +
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

        public void obtenerMateria()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idmateria as id, descmateria as descripcion FROM  tblcatmateria where activo = 1";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropdownBoxMateria.DataSource = cmd.ExecuteReader();
                DropdownBoxMateria.DataTextField = "descripcion";
                DropdownBoxMateria.DataValueField = "id";
                DropdownBoxMateria.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);

            }
        }

        public void obtenerCatalogo() {
            obtenerMateria();
            obtenerCombo();
            obtenerList3();
            obtenerList4();
            obtenerList5();
            obtenerList6();
            obtenerList7();
            obtenerList8();
            obtenerList9();
            obtenerList10();
            obtenerList11();
            obtenerList12();
            obtenerList13();
            obtenerList131();
            obtenerList14();
            obtenerList15();
            obtenerList16();
            obtenerList17();
            obtenerList17();
            obtenerList18();
        }


        public void obtenerCombo()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 1 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                listBox2.DataSource = cmd.ExecuteReader();
                listBox2.DataTextField = "descripcion";
                listBox2.DataValueField = "id";
                listBox2.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            } 
        }





        public void obtenerList3()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 2 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                listBox3.DataSource = cmd.ExecuteReader();
                listBox3.DataTextField = "descripcion";
                listBox3.DataValueField = "id";
                listBox3.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }

        public void obtenerList4()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 3 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                listBox4.DataSource = cmd.ExecuteReader();
                listBox4.DataTextField = "descripcion";
                listBox4.DataValueField = "id";
                listBox4.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }

        public void obtenerList5()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 4 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownPregunta5.DataSource = cmd.ExecuteReader();
                DropDownPregunta5.DataTextField = "descripcion";
                DropDownPregunta5.DataValueField = "id";
                DropDownPregunta5.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }


        public void obtenerList6()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta =6 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                listBoxParentezco.DataSource = cmd.ExecuteReader();
                listBoxParentezco.DataTextField = "descripcion";
                listBoxParentezco.DataValueField = "id";
                listBoxParentezco.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }


        public void obtenerList7()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta =7 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                listBoxCargo.DataSource = cmd.ExecuteReader();
                listBoxCargo.DataTextField = "descripcion";
                listBoxCargo.DataValueField = "id";
                listBoxCargo.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }



        public void obtenerList8()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 8 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "descripcion";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }


        public void obtenerList9()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 8 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList2.DataSource = cmd.ExecuteReader();
                DropDownList2.DataTextField = "descripcion";
                DropDownList2.DataValueField = "id";
                DropDownList2.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }

        public void obtenerList10()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 9 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList3.DataSource = cmd.ExecuteReader();
                DropDownList3.DataTextField = "descripcion";
                DropDownList3.DataValueField = "id";
                DropDownList3.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }


        public void obtenerList11()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 10 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList4.DataSource = cmd.ExecuteReader();
                DropDownList4.DataTextField = "descripcion";
                DropDownList4.DataValueField = "id";
                DropDownList4.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }


        public void obtenerList12()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 11 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList5.DataSource = cmd.ExecuteReader();
                DropDownList5.DataTextField = "descripcion";
                DropDownList5.DataValueField = "id";
                DropDownList5.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }


        public void obtenerList13()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 12 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList6.DataSource = cmd.ExecuteReader();
                DropDownList6.DataTextField = "descripcion";
                DropDownList6.DataValueField = "id";
                DropDownList6.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }

        public void obtenerList131()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 13 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList7.DataSource = cmd.ExecuteReader();
                DropDownList7.DataTextField = "descripcion";
                DropDownList7.DataValueField = "id";
                DropDownList7.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }


        public void obtenerList14()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 14 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList8.DataSource = cmd.ExecuteReader();
                DropDownList8.DataTextField = "descripcion";
                DropDownList8.DataValueField = "id";
                DropDownList8.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }


        public void obtenerList15()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 15 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList9.DataSource = cmd.ExecuteReader();
                DropDownList9.DataTextField = "descripcion";
                DropDownList9.DataValueField = "id";
                DropDownList9.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }



        public void obtenerList16()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 16 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList10.DataSource = cmd.ExecuteReader();
                DropDownList10.DataTextField = "descripcion";
                DropDownList10.DataValueField = "id";
                DropDownList10.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }

        public void obtenerList17()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 17 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList11.DataSource = cmd.ExecuteReader();
                DropDownList11.DataTextField = "descripcion";
                DropDownList11.DataValueField = "id";
                DropDownList11.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }

        public void obtenerList18()
        {

            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "SELECT idgeneral as id, descgeneral as descripcion FROM  tblcatgeneral where numeropregunta = 18 and activo=1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                DropDownList12.DataSource = cmd.ExecuteReader();
                DropDownList12.DataTextField = "descripcion";
                DropDownList12.DataValueField = "id";
                DropDownList12.DataBind();
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }



        protected void LinkButtonG_Click(object sender, EventArgs e)
        {

            guardarFormacion(informacionFormacion());
            guardarTribunal(informacionTribunal());
            guardarExperiencia(informacionExperiencia());
            guardarConocimientos(informacionConocimientos());
            guardarAspectosCualitativos(informacionAspectosCualitativos());
        }

        public Formacion informacionFormacion() {
            Formacion obj = new Formacion();
            obj.Materia = Convert.ToInt32(DropdownBoxMateria.SelectedValue);

            obj.Pregunta2 = new List<int>();
            foreach (ListItem p in listBox2.Items)
            {
                if (p.Selected)
                {
                    obj.Pregunta2.Add(Convert.ToInt32(p.Value));
                }
            }

            obj.Pregunta3 = new List<int>();
            foreach (ListItem p in listBox3.Items)
            {
                if (p.Selected)
                {
                    obj.Pregunta3.Add(Convert.ToInt32(p.Value));
                }
            }

            obj.Pregunta4 = new List<int>();
            foreach (ListItem p in listBox4.Items)
            {
                if (p.Selected)
                {
                    obj.Pregunta4.Add(Convert.ToInt32(p.Value));
                }
            }

            obj.Pregunta5 = Convert.ToInt32(DropDownPregunta5.SelectedValue);

            return obj;
        }

        public Tribunal informacionTribunal()
        {
            Tribunal t = new Tribunal();
            t.TrabajaTribunal = Convert.ToInt32(DropDownList1.SelectedValue);
            t.Nombre = texNombrep1.Text;

            t.Pregunta3 = new List<int>();
            foreach (ListItem p in listBoxParentezco.Items)
            {
                if (p.Selected)
                {
                    t.Pregunta3.Add(Convert.ToInt32(p.Value));
                }
            }

            t.Pregunta4 = new List<int>();
            foreach (ListItem p in listBoxCargo.Items)
            {
                if (p.Selected)
                {
                    t.Pregunta4.Add(Convert.ToInt32(p.Value));
                }
            }

            return t;
        }

        public Experiencia informacionExperiencia()
        {
            Experiencia e = new Experiencia();
            e.Pregunta1 = Convert.ToInt32(DropDownList2.SelectedValue);
            e.Pregunta2 = Convert.ToInt32(DropDownList3.SelectedValue);
            e.Pregunta3 = Convert.ToInt32(DropDownList4.SelectedValue);
            return e;
        }


        public Conocimientos informacionConocimientos()
        {
            Conocimientos c = new Conocimientos();
            c.Pregunta1= Convert.ToInt32(DropDownList5.SelectedValue);
            c.Text1 = TextBoxPregunta1.Text;
            c.Pregunta2 = Convert.ToInt32(DropDownList6.SelectedValue);
            c.Text2= TextBoxPregunta2.Text; 
            c.Pregunta3 = Convert.ToInt32(DropDownList7.SelectedValue);
            c.Text3 = TextBoxPregunta3.Text; ;

            return c;
        }

        public AspCualitativo informacionAspectosCualitativos() {
            AspCualitativo a = new AspCualitativo();
            a.Aspecto = Convert.ToInt32(DropDownList8.SelectedValue);
            a.FormaExp = Convert.ToInt32(DropDownList9.SelectedValue);
            a.Interes = Convert.ToInt32(DropDownList10.SelectedValue);
            a.Actitud = Convert.ToInt32(DropDownList11.SelectedValue);
            a.ElemAfecta = Convert.ToInt32(DropDownList12.SelectedValue);
            return a;
        }


        public void guardarFormacion(Formacion f) 
        {
            int b = 0;
            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "INSERT INTO tblformacioncomplementariaintereses(idmateria,idaspirante,idgeneral,fecharegistro,activo) VALUES "
                    +" ( " + f.Materia + " , "+ b + " , " +f.Pregunta5 + ", NOW() , 1 )";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                cmd.ExecuteNonQuery();

                long idRegistro = cmd.LastInsertedId;
                Console.WriteLine("id guardado: "+idRegistro);
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }

        public void guardarTribunal(Tribunal t)
        {
            int b = 0;
            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "INSERT INTO tblinformacionrelacionadatribunal(idaspirante,tiene_familiar,nombre,fecharegistro,activo) VALUES "
                    + " ( "  + b + " , " + t.TrabajaTribunal+" , '" + t.Nombre + "' , NOW() , 1 )";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                cmd.ExecuteNonQuery();

                long idRegistro = cmd.LastInsertedId;
                Console.WriteLine("id guardado Tribunal: " + idRegistro);
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }

        public void guardarExperiencia(Experiencia e)
        {
            int b = 0;
            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "INSERT INTO tblexperienciaprofesional (idaspirante,act_tra_der,tiempo_act,meritorias,fecharegistro,activo)  VALUES "
                    + " ( " + b + ", " + e.Pregunta1 + " , " + e.Pregunta2+ " , " + e.Pregunta3 + " ,  NOW() , 1 )";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                cmd.ExecuteNonQuery();

                long idRegistro = cmd.LastInsertedId;
                Console.WriteLine("id guardado: " + idRegistro);
                con.Close();
            }
            catch (MySqlException ex)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + ex.Message);
            }
        }


        public void guardarConocimientos(Conocimientos c)
        {
            int b = 0;
            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "INSERT INTO tblconocimientosinteres (idaspirante,pregunta1,pregunta_uno,pregunta2,pregunta_dos,pregunta3,pregunta_tres , fecharegistro, activo)  VALUES "
                    + " ( " + b + ", '" + c.Text1+ "', "+c.Pregunta1+" , '" + c.Text2 + "', " + c.Pregunta2+ ", '" + c.Text3+ "' ," + c.Pregunta3+",  NOW() , 1 )";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                cmd.ExecuteNonQuery();

                long idRegistro = cmd.LastInsertedId;
                Console.WriteLine("id guardado Conocimientos: " + idRegistro);
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }


        public void guardarAspectosCualitativos(AspCualitativo a)
        {
            int b = 0;
            try
            {
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                String query = "INSERT INTO tblaspectoscualitativosobservacion (idaspirante,aspper,formexp,intprof,actentre,desempenio,fecharegistro,activo)  VALUES "
                    + " ( " +  b + ", " + a.Aspecto + " , " + a.FormaExp + " , " + a.Interes +" , "+ a.Actitud+" , "+ a.ElemAfecta + ", NOW() , 1 )";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd = new MySqlCommand(query, con);

                cmd.ExecuteNonQuery();

                long idRegistro = cmd.LastInsertedId;
                Console.WriteLine("id guardado: " + idRegistro);
                con.Close();
            }
            catch (MySqlException e)
            {
                Debug.WriteLine("Error al obtener los datos dos: " + e.Message);
            }
        }

    }
}