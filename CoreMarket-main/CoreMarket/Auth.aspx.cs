using CoreMarket.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoreMarket
{
    public partial class Auth : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string username = this.username.Text;
            string password = this.password.Text;

            if (AuthService.IsUserLogin(username, password))
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Kullanıcı adı veya parola yanlış.');", true);
            }
        }

    }
}