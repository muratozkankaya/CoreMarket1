using CoreMarket.Constant;
using CoreMarket.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.IO;

namespace CoreMarket
{
    public partial class ProductLogs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckUserSession();
            List<ProductLog> productLogList = GetProductLog();
            repeaterProductLogs.DataSource = productLogList;
            repeaterProductLogs.DataBind();
        }

        private List<ProductLog> GetProductLog()
        {
            string filePath = HttpContext.Current.Server.MapPath(Constants.ProductLogJson);
            string jsonFile = File.ReadAllText(filePath);

            List<ProductLog> logList = JsonConvert.DeserializeObject<List<ProductLog>>(jsonFile);
            return logList;
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