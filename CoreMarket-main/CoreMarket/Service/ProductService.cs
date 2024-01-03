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
    public class ProductService
    {
        public static List<Product> GetProductList()
        {
            string filePath = HttpContext.Current.Server.MapPath(Constants.ProductsJson);
            string jsonFile = File.ReadAllText(filePath);

            List<Product> productList = JsonConvert.DeserializeObject<List<Product>>(jsonFile);
            return productList;
        }

        public static void AddProduct(Product product)
        {
            List<Product> productList = GetProductList();
            productList.Add(product);
            File.WriteAllText(HttpContext.Current.Server.MapPath(Constants.ProductsJson), JsonConvert.SerializeObject(productList));
            LogProduct("Add", product.Name, product.Count, product.PurcasedPrice, product.Price);
        }

        public static Product GetProductById(int productId)
        {
            List<Product> productList = GetProductList();

            return productList.FirstOrDefault(product => product.Id == productId);
        }

        public static void SellProduct(Product updatedProduct)
        {
            List<Product> productList = GetProductList();

            Product product = GetProductById(updatedProduct.Id);

            if (product != null)
            {
                int index = productList.FindIndex(p => p.Id == updatedProduct.Id);

                if (index != -1)
                {
                    productList[index].Count = updatedProduct.Count;

                    if (updatedProduct.Count == 0)
                    {
                        productList.RemoveAt(index);
                    }

                    SaveProductList(productList);
                }
            }
            else
            {
                //TODO hata mesajı
            }

            SaveProductList(productList);
            LogProduct("Sell", product.Name, product.Count, product.PurcasedPrice, product.Price);
        }

        private static void SaveProductList(List<Product> productList)
        {
            string json = JsonConvert.SerializeObject(productList);

            File.WriteAllText(HttpContext.Current.Server.MapPath(Constants.ProductsJson), JsonConvert.SerializeObject(productList));
        }

        public static void LogProduct(string action, string productName, int count, decimal boughtPrice, decimal soldPrice)
        {
            string logFilePath = HttpContext.Current.Server.MapPath(Constants.ProductLogJson);
            List<ProductLog> productLogs = new List<ProductLog>();

            if (File.Exists(logFilePath))
            {
                string jsonData = File.ReadAllText(logFilePath);
                if (!string.IsNullOrEmpty(jsonData))
                {
                    productLogs = JsonConvert.DeserializeObject<List<ProductLog>>(jsonData);
                }
            }

            ProductLog log = new ProductLog
            {
                Action = action,
                ProductName = productName,
                Count = count,
                BoughtPrice = boughtPrice,
                SoldPrice = soldPrice,
                DateTime = DateTime.Now
            };

            productLogs.Add(log);

            string updatedJson = JsonConvert.SerializeObject(productLogs, Formatting.Indented);
            File.WriteAllText(logFilePath, updatedJson);
        }

        public static List<ProductLog> GetProductLogs()
        {
            string logFilePath = HttpContext.Current.Server.MapPath(Constants.ProductLogJson);
            List<ProductLog> productLogs = new List<ProductLog>();

            if (File.Exists(logFilePath))
            {
                string jsonData = File.ReadAllText(logFilePath);
                if (!string.IsNullOrEmpty(jsonData))
                {
                    productLogs = JsonConvert.DeserializeObject<List<ProductLog>>(jsonData);
                }
            }

            return productLogs;
        }
    }
}