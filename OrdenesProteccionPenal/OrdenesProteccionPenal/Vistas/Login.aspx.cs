using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OrdenesProteccionPenal.Vistas
{
    public partial class Login : System.Web.UI.Page
    {
        string str;
        MySqlCommand com;
        MySqlDataReader r;
        string password;

        protected void btn_login_Click(object sender, EventArgs e)

        {
            MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["local"]);
            con.Open();
            str = "select u.idUsuario iu " +
                "from die_ordenes_proteccion_penal.seguridad_tblusuarios u " +
                "where usuario=@UserName and password=@Password and u.activo = 1 ";
            com = new MySqlCommand(str, con);
            com.CommandType = CommandType.Text;
            password = TextBox_password.Text;



            com.Parameters.AddWithValue("@UserName", TextBox_user_name.Text);
            com.Parameters.AddWithValue("@Password", GetMD5(TextBox_password.Text));
            r = com.ExecuteReader();


            if (r.HasRows)
            {
             
                Dictionary<String, String> uss = new Dictionary<String, String>();
                Random rnd = new Random();
                uss.Add("user", TextBox_user_name.Text);
                uss.Add("pass", GetMD5(password));
                Session["userpass"] = uss;
                Response.Redirect("MenuFiscalia.aspx");
            }
            else
            {

                Session.RemoveAll();
                Session.Abandon();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Error usuario", "mensaje('Campo usuario vacio','El usuario o contraseña no son válidos','error');", true);
            }
            con.Close();
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