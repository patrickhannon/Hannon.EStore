using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EStore.Logic;

namespace EStore.Admin
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string categoryAction = Request.QueryString["CategoryAction"];
            if (categoryAction == "add")
            {
                LabelAddStatus.Text = "Category added!";
            }

            if (categoryAction == "remove")
            {
                LabelRemoveStatus.Text = "Category removed!";
            }
        }

        protected void AddCategoryButton_Click(object sender, EventArgs e)
        {
            AddCategories categories = new AddCategories();
            bool addSuccess = categories.AddCategory(AddCategory.Text, AddCategoryDesc.Text);
            if (addSuccess)
            {
                // Reload the page.
                string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                Response.Redirect(pageUrl + "?CategoryAction=add");
            }
            else
            {
                LabelAddStatus.Text = "Unable to add new category to database.";
            }
        }
        protected void RemoveCategoryButton_Click(object sender, EventArgs e)
        {
            using (var _db = new EStore.Models.ProductContext())
            {
                int categoryId = Convert.ToInt16(DropDownRemoveCategory.SelectedValue);
                var myItem = (from c in _db.Categories where c.CategoryId == categoryId select c).FirstOrDefault();
                if (myItem != null)
                {
                    _db.Categories.Remove(myItem);
                    _db.SaveChanges();

                    // Reload the page.
                    string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                    Response.Redirect(pageUrl + "?CategoryAction=remove");
                }
                else
                {
                    LabelRemoveStatus.Text = "Unable to locate category.";
                }
            }
        }
        public IQueryable GetCategories()
        {
            var _db = new EStore.Models.ProductContext();
            IQueryable query = _db.Categories;
            return query;
        }
    }
}