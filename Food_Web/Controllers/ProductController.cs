using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using Food_Web.Models;

namespace Food_Web.Models
{
    //[Authorize(Roles = "Member")]
    public class ProductController : Controller
    {
        private FoodcontextDB db = new FoodcontextDB();

        public ActionResult GetCategorys()
        {
            List<Category> listCategorys = db.Categories.OrderBy(p => p.Categoryid).ToList();
            return PartialView(listCategorys);
        }

        public ActionResult GetProductByCategory(int categoryid)
        {
            List<Product> listProduct = db.Products.Where(p => p.Categoryid == categoryid && p.status == true).ToList();
            return PartialView(listProduct);
        }

        public ActionResult Index()
        {
            
            var context = new FoodcontextDB();
            return View(context.Products.ToList());
        }


        public ActionResult ChangeLanguage(string lang)
        {
            CultureInfo.CurrentCulture = new CultureInfo(lang, false);
            CultureInfo.CurrentUICulture = new CultureInfo(lang, false);
            var context = new FoodcontextDB();
            return View("Index", context.Products.ToList());
        }
        // GET: Admin/Products/Details/5
        public ActionResult Details(string id)
        {
            int productId;
            if (!int.TryParse(id, out productId))
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            Product product = db.Products.Find(productId);
            if (product == null)
            {
                return HttpNotFound();
            }

            // Continue with your code logic to display the product details

            return View(product);
        }
        [HttpPost]
        public ActionResult Search(String searchString)
        {
            var context = new FoodcontextDB();
            var results = from p in context.Products
                          where (p.Productname.Contains(searchString)
                                 || p.Category.Categoryname.Contains(searchString)
                                 || p.price.ToString().Contains(searchString))
                                 && p.status == true
                          select p;

            if (results.Any())
            {
                return PartialView(results.ToList());
            }
            return HttpNotFound("No matching products found.");
        }

        public ActionResult Menu()
        {
            var context = new FoodcontextDB();
            var products = context.Products.Where(p => p.status == true).ToList();
            return View(products);
        }

    }
}
