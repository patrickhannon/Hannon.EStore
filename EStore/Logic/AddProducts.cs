using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EStore.Models;

namespace EStore.Logic
{
    public class AddProducts
    {
        public bool AddProduct(string ProductName, string ProductDesc, string ProductPrice, 
            string ProductCategory, string ProductImagePath, string QtyInStock, string Weight,
            string Sku, string Manufacturer)
        {
            var myProduct = new Product();
            myProduct.ProductName = ProductName;
            myProduct.Description = ProductDesc;
            myProduct.UnitPrice = Convert.ToDouble(ProductPrice);
            myProduct.ImagePath = ProductImagePath;
            myProduct.CategoryId = Convert.ToInt32(ProductCategory);
            myProduct.QuantityInStock = Convert.ToInt32(QtyInStock);
            myProduct.Weight = Convert.ToDouble(Weight);
            myProduct.Sku = Sku;
            myProduct.Manufacturer = Manufacturer;

            using (ProductContext _db = new ProductContext())
            {
                // Add product to DB.
                _db.Products.Add(myProduct);
                _db.SaveChanges();
            }
            // Success.
            return true;
        }
    }
}