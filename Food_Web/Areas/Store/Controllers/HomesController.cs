using Food_Web.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Food_Web.Areas.Store.Controllers
{
    public class HomesController : Controller
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
            var TotalProductstodaySold = CalculateTotalQuantitySoldToday();
            ViewBag.TotalProductstodaySold = TotalProductstodaySold;
            


            var TotalMoney = CalculateTotalMoneyForLoggedInStore();
            ViewBag.TotalMoney = TotalMoney;

            // Lấy danh sách sản phẩm thuộc người dùng đăng nhập
            var products = db.Products
                .Where(p => p.Userid == userId)
               /* .Include(p => p.Category)*/;
            //.Include(p => p.chef);

            return View(/*products.ToList()*/);
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



        public int CalculateTotalQuantitySoldToday()
        {
            var userId = User.Identity.GetUserId();
            DateTime today = DateTime.Today;

            double totalQuantity = db.Order_detail
                   .Where(o => o.Storeid == userId && o.Order.Od_date == today)
                   .Select(o => o.num ?? 0)
                   .DefaultIfEmpty()
                   .Sum();
            int totalMoneytodayInt = (int)totalQuantity;
            return totalMoneytodayInt;
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