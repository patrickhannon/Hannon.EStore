using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EStore.Models;

namespace EStore.Logic
{
    public class AddCategories
    {
        public bool AddCategory(string CategoryName, string Description)
        {
            var myCategory = new Category();
            myCategory.CategoryName = CategoryName;
            myCategory.Description = Description;
            

            using (ProductContext _db = new ProductContext())
            {
                // Add product to DB.
                _db.Categories.Add(myCategory);
                _db.SaveChanges();
            }
            // Success.
            return true;
        }
    }
}