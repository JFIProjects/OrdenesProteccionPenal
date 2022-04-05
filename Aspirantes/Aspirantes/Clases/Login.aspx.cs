using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aspirantes.Clases
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            textoError.Visible = false;
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
            try
            {
                String query = "";
                con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
                con.Open();
                query = "SELECT * FROM tblusuarios " +
                    "where usuario= @usuario  and  pas_encriptada = @contrasenia  and activo = 1 ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                String pasCif = GetMD5(TextBox_password.Text);
                cmd.Parameters.AddWithValue("@usuario", TextBox_user_name.Text);
                cmd.Parameters.AddWithValue("@contrasenia", pasCif);

                MySqlDataReader r = cmd.ExecuteReader();

                if (r.HasRows)
                {
                    String id="" , perfil="" , nombre = "" ;
                    while (r.Read())
                    {
                        id = r.GetString("idUsuario");
                        perfil = r.GetString("perfil");
                        nombre = r.GetString("nombre");
                    }
                    Dictionary<String, String> uss = new Dictionary<String, String>();
                    uss.Add("user", TextBox_user_name.Text);
                    uss.Add("idUsuario", id);
                    uss.Add("perfil", perfil);
                    uss.Add("nombre", nombre);
                    Session["userEnt"] = uss;

                    Response.Redirect("Entrevista.aspx",false);
                    textoError.Visible = false;

                }
                else
                {
                    textoError.Visible = true;
                    textoError.Text = "Usuario o contraseña incorrectos";
                }


                con.Close();

            }
            catch (Exception ex)
            {
                if (con != null)
                {
                    con.Close();
                    Console.WriteLine("Exception login: "+ex.ToString());
                }
                textoError.Visible = true;
                textoError.Text = "Usuario o contraseña incorrectos";
            }

        }


        private string GetMD5(string str)
        {
            MD5 md5 = MD5CryptoServiceProvider.Create();
            ASCIIEncoding encoding = new ASCIIEncoding();
            byte[] stream = null;
            StringBuilder sb = new StringBuilder();
            stream = md5.ComputeHash(encoding.GetBytes(str));
            for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
            return sb.ToString();
        }
    }
}