using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Food_Web.Models;
using Microsoft.AspNet.Identity;
using System.IO;
using System.Data.Entity.Infrastructure; // For Entity Framework 6
    


namespace Food_Web.Areas.Store.Controllers
{
    public class ProductssController : Controller
    {
        private FoodcontextDB db = new FoodcontextDB();

       
        public ActionResult Index()
        {
            // Lấy thông tin người dùng đăng nhập
            var userId = User.Identity.GetUserId();

            // them 
            var totalProducts = CalculateTotalProductsForLoggedInUser();
            ViewBag.TotalStock = totalProducts;

            //thme
            var TotalProductsSold = CalculateTotalnumForLoggedInStore();
            ViewBag.TotalProductsSold = TotalProductsSold;

            ////them 



            var TotalMoney = CalculateTotalMoneyForLoggedInStore();
            ViewBag.TotalMoney = TotalMoney;

            // Lấy danh sách sản phẩm thuộc người dùng đăng nhập
            var products = db.Products
                .Where(p => p.Userid == userId)
                .Include(p => p.Category);
                //.Include(p => p.chef);

            return View(products.ToList());
        }
        // GET: Store/Productss/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = await db.Products.FindAsync(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // GET: Store/Productss/Create
        public ActionResult Create()
        {

            ViewBag.Categoryid = new SelectList(db.Categories, "Categoryid", "Categoryname");
            return View();
        }

        
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public ActionResult Create(Product newproduct, HttpPostedFileBase Content)
        {
            var userId = User.Identity.GetUserId();
            var context = new FoodcontextDB();

            if (ModelState.IsValid)
            {
                newproduct = context.Products.Add(newproduct);

                if (Content != null && Content.ContentLength > 0)
                {
                    var typeFile = Path.GetExtension(Content.FileName);
                    newproduct.image = newproduct.Productid + typeFile;
                    var filePath = Path.Combine(Server.MapPath("~/Content/products"), newproduct.image);
                    Content.SaveAs(filePath);

                }
                newproduct.Userid = userId;

                context.SaveChanges();
                return RedirectToAction("Index");
            }
            return View("Create", newproduct);
        }

        // GET: Store/Productss/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = await db.Products.FindAsync(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.Categoryid = new SelectList(db.Categories, "Categoryid", "Categoryname", product.Categoryid);
           
            return View(product);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Productid,Productname,price,discription,Categoryid,sortdiscription,Userid")] Product product, HttpPostedFileBase Picture)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var find = await db.Products.FindAsync(product.Productid);
                    if (find == null)
                    {
                        return HttpNotFound();
                    }

                    if (Picture != null && Picture.ContentLength > 0)
                    {
                        string fileName = "";
                        int index = Picture.FileName.IndexOf('.');
                        fileName = "ImageProduct" + product.Productid.ToString() + "." + Picture.FileName.Substring(index + 1);
                        string path = Path.Combine(Server.MapPath("~/Content/products"), fileName);
                        Picture.SaveAs(path);
                        product.image = fileName;
                    }
                    else
                    {
                        product.image = find.image;
                    }

                    product.Userid = User.Identity.GetUserId();
                    db.Entry(find).CurrentValues.SetValues(product);
                    await db.SaveChangesAsync();

                    ViewBag.Categoryid = new SelectList(db.Categories, "Categoryid", "Categoryname", product.Categoryid);
                    return RedirectToAction("Index");
                }
                catch
                {
                    // Handle any exceptions that occur during the saving process
                    ViewBag.Categoryid = new SelectList(db.Categories, "Categoryid", "Categoryname", product.Categoryid);
                    return View(product);
                }
            }
            else
            {
                ViewBag.Categoryid = new SelectList(db.Categories, "Categoryid", "Categoryname", product.Categoryid);
                return View(product);
            }
        }

        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = await db.Products.FindAsync(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return PartialView("_DeleteConfirmation", product);
        }

        // POST: Store/Productss/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Product product = await db.Products.FindAsync(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            var removeDetail = product.Order_detail.ToList();
            var removeCart = product.CartItems.ToList();
            db.Order_detail.RemoveRange(removeDetail);
            db.CartItems.RemoveRange(removeCart);
            db.Products.Remove(product);
            await db.SaveChangesAsync();

            // Return a JSON response indicating success
            return Json(new { success = true });
        }
        [HttpPost]
        public JsonResult RemoveProduct(int id)
        {
            var product = db.Products.SingleOrDefault(x=>x.Productid == id);
            if (product != null)
            {
                var removeDetail = product.Order_detail.ToList();
                var removeCart = product.CartItems.ToList();
                db.Order_detail.RemoveRange(removeDetail);
                db.CartItems.RemoveRange(removeCart);
                db.Products.Remove(product);
                db.SaveChanges();
                return Json(new { success = true });
            }
            return Json(new { success = true });
        }


        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        [HttpPost]
        public ActionResult UpdateStatus(int id, bool status)
        {
            // lấy sản phẩm từ database
            var product = db.Products.FirstOrDefault(p => p.Productid == id);
            if (product == null)
            {
                return Json(new { success = false });
            }
            // cập nhật trạng thái của sản phẩm
            product.status = status;
            db.SaveChanges();
            return Json(new { success = true });
        }



        public ActionResult hot()
        {
            // Lấy thông tin người dùng đăng nhập
            var userId = User.Identity.GetUserId();

            // Lấy danh sách sản phẩm thuộc người dùng đăng nhập và có thuộc tính is_hot bằng true
            var products = db.Products
                .Where(p => p.Userid == userId && p.is_hot == true)
                .Include(p => p.Category)
               ;

            return View(products.ToList());
        }
        private List<SelectListItem> GetProductList(string userId)
        {
            var productList = db.Products
                .Where(p => p.Userid == userId)
                .Select(p => new SelectListItem
                {
                    Value = p.Productid.ToString(),
                    Text = p.Productname
                })
                .ToList();

            return productList;
        }

        public ActionResult SetHot()
        {
            // Lấy thông tin người dùng đăng nhập
            var userId = User.Identity.GetUserId();

            // Lấy danh sách sản phẩm thuộc người dùng đăng nhập
            var productList = GetProductList(userId);

            // Tạo đối tượng SetHotViewModel và gán danh sách sản phẩm vào
            var viewModel = new SetHotViewModel
            {
                Products = productList
            };

            return View(viewModel);
        }

        [HttpPost]
        public ActionResult SetHot(SetHotViewModel model)
        {
            var product = db.Products.Find(model.SelectedProductId);
            if (product != null)
            {
                product.is_hot = true;
                db.SaveChanges();
            }

            // Lấy thông tin người dùng đăng nhập
            var userId = User.Identity.GetUserId();

            // Lấy danh sách sản phẩm thuộc người dùng đăng nhập
            var productList = GetProductList(userId);

            // Tạo đối tượng SetHotViewModel và gán danh sách sản phẩm vào
            var viewModel = new SetHotViewModel
            {
                Products = productList
            };

            return RedirectToAction("hot");
        }
        public async Task<ActionResult> DeleteHot(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            Product product = await db.Products.FindAsync(id);

            if (product == null)
            {
                return HttpNotFound();
            }


            product.is_hot = false;

            db.Entry(product).State = EntityState.Modified;
            await db.SaveChangesAsync();

            return RedirectToAction("hot");
        }


        public async Task<ActionResult> Sale()
        {
            var userId = User.Identity.GetUserId();

            var products = await db.Products.Where(p => p.DiscountPercent > 0 && p.Userid == userId).ToListAsync();

            return View(products);
        }

        public async Task<ActionResult> CreateDiscount()
        {
            var userId = User.Identity.GetUserId();
            var products = await db.Products.Where(p => p.Userid == userId).ToListAsync();
            ViewBag.Products = new SelectList(products, "Productid", "ProductName");
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> CreateDiscount(int productId, int discountPercent)
        {
            var product = await db.Products.FindAsync(productId);

            if (product != null)
            {
                product.DiscountPercent = discountPercent;
                var discountedPrice = (int)(product.price * (100 - discountPercent) / 100);
                product.DiscountedPrice = discountedPrice;
                db.Entry(product).State = EntityState.Modified;
                await db.SaveChangesAsync();
            }

            return RedirectToAction("Sale");
        }
        public async Task<ActionResult> DeleteSale(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            Product product = await db.Products.FindAsync(id);

            if (product == null)
            {
                return HttpNotFound();
            }

            // Remove the sale
            product.DiscountPercent = 0;
            product.DiscountedPrice = product.price;

            db.Entry(product).State = EntityState.Modified;
            await db.SaveChangesAsync();

            return RedirectToAction("Sale");
        }

        // GET: Sale/EditSale/{productId}
        // GET: Sale/EditSale/{productId}
        public ActionResult EditSale(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.Categoryid = new SelectList(db.Categories, "Categoryid", "Categoryname", product.Categoryid);
            return View(product);
        }

        // POST: Admin/Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EditSale([Bind(Include = "Categoryid,DiscountPercent")] Product product)
        {
            if (ModelState.IsValid)
            {
                var userId = User.Identity.GetUserId();
                product.Userid = userId; // Assign the logged-in user's ID to the UserId property

                db.Entry(product).State = EntityState.Modified;
               
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Categoryid = new SelectList(db.Categories, "Categoryid", "Categoryname", product.Categoryid);
            return View(product);
        }


        public int CalculateTotalnumForLoggedInStore()
        {
            var userId = User.Identity.GetUserId();

            double totalMoney = db.Order_detail
                .Where(o => o.Storeid == userId)
                .Select(o => o.num ?? 0)
                .DefaultIfEmpty()
                .Sum();

            int totalMoneyInt = (int)totalMoney;

            return totalMoneyInt;
        }





        public int CalculateTotalProductsForLoggedInUser()
        {
            var userId = User.Identity.GetUserId();

            int totalProducts = db.Products
                .Count(p => p.Userid == userId);

            if (totalProducts > 0)
            {
                return totalProducts;
            }

            return 0;
        }




        public int CalculateTotalMoneyForLoggedInStore()
        {
            var userId = User.Identity.GetUserId();

            var totalMoneyQuery = db.Order_detail
                .Where(o => o.Storeid == userId)
                .Select(o => o.tt_money);

            double? totalMoney = totalMoneyQuery.Any() ? totalMoneyQuery.Sum() : 0;

            int totalMoneyInt = Convert.ToInt32(totalMoney);

            return totalMoneyInt;
        }




    }
}
