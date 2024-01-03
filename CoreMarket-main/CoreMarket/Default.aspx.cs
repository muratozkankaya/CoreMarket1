using System;
using System.Web.UI;

namespace CoreMarket
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckUserSession();

        }

        private void CheckUserSession()
        {
            if (Session["CurrentUser"] == null)
            {
                Response.Redirect("Auth.aspx");
            }
        }
    }
}