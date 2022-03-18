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

       
    }
}