using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CoreMarket.Model
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Count { get; set; }
        public decimal Price { get; set; }
        public decimal PurcasedPrice { get; set; }
    }
}