using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Food_Web.Models
{
    public class HomeController : Controller
    {
        private FoodcontextDB db = new FoodcontextDB();


        public ActionResult categoryindex()
        {
            return View(db.Categories.ToListAsync());
        }
        public ActionResult Index()
        {
            var products = db.Products.ToList();

            return View(products);
        }
        public ActionResult Detail(string id)
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

        public ActionResult bestsell()
        {
            var products = db.Products.Where(p => p.DiscountPercent > 0).ToList();
            return View(products);
        }
        public ActionResult hot()
        {
            var products = db.Products.Where(p => p.is_hot == true).ToList();
            return View(products);
        }


        public ActionResult Arrivals(int? page)
        {
            int pageSize = 8; // Number of products to display per page
            int pageIndex = page.HasValue ? page.Value : 1; // Current page index, default to 1 if not specified

            var products = db.Products.OrderBy(p => p.Productid).ToList(); // Sort the products by Id before pagination

            // Create a paged list of products using the pageIndex and pageSize values
            IPagedList<Product> pagedProducts = products.ToPagedList(pageIndex, pageSize);

            return View(pagedProducts);
        }


        public ActionResult Hotdeal(int? page)
        {
            int pageSize = 8; // Number of products to display per page
            int pageIndex = page.HasValue ? page.Value : 1; // Current page index, default to 1 if not specified

            var products = db.Products.Where(p => p.is_hot == true).OrderBy(p => p.Productid).ToList(); // Sort the products by Id before pagination

            // Create a paged list of products using the pageIndex and pageSize values
            IPagedList<Product> pagedProducts = products.ToPagedList(pageIndex, pageSize);

            return View(pagedProducts);
        }

        public ActionResult flasdeal(int? page)
        {
            int pageSize = 8; // Number of products to display per page
            int pageIndex = page.HasValue ? page.Value : 1; // Current page index, default to 1 if not specified

            var products = db.Products.Where(p => p.DiscountPercent > 0).OrderBy(p => p.Productid).ToList(); // Sort the products by Id before pagination

            // Create a paged list of products using the pageIndex and pageSize values
            IPagedList<Product> pagedProducts = products.ToPagedList(pageIndex, pageSize);

            return View(pagedProducts);
        }

        public ActionResult Showhot()
        {
            var products = db.Products.Where(p => p.is_hot == true).ToList();
            return View(products);
        }

    }
}