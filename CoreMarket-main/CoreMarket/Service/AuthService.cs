using CoreMarket.Constant;
using CoreMarket.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace CoreMarket.Service
{
    public class AuthService
    {

        public static bool IsUserLogin(string username, string password)
        {
            string filePath = HttpContext.Current.Server.MapPath(Constants.UsersJson);

            if (File.Exists(filePath))
            {
                string jsonFile = File.ReadAllText(filePath);
                List<User> userList = JsonConvert.DeserializeObject<List<User>>(jsonFile);

                User user = userList.Find(u => u.username == username && u.password == password);

                if (user != null)
                {
                    HttpContext.Current.Session["CurrentUser"] = user;
                    return true;
                }
            }
            return false;
        }
    }
}