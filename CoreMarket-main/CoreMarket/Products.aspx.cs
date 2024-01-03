using CoreMarket.Constant;
using CoreMarket.Model;
using CoreMarket.Service;
using Microsoft.Ajax.Utilities;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoreMarket
{
    public partial class Products : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                List<Product> productList = ProductService.GetProductList();
                
                repeaterProducts.DataSource = productList;
                repeaterProducts.DataBind();
            }
        }
    }
}