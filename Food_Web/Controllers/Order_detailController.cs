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
using PagedList;

namespace Food_Web.Models
{
    public class Order_detailController : Controller
    {
        private FoodcontextDB db = new FoodcontextDB();

        // GET: Order_detail
        public ActionResult Index(bool? statusFilter, int? page)
        {
            // Check if the user is authenticated
            if (User.Identity.IsAuthenticated)
            {
                var loggedInUserId = User.Identity.GetUserId();
                var orderDetails = db.Order_detail.Include(o => o.Order).Include(o => o.Product).Where(i => i.Order.Od_name == loggedInUserId);

                if (statusFilter.HasValue)
                {
                    bool status = statusFilter.Value;
                    orderDetails = orderDetails.Where(o => o.Order.Od_status == status);
                }

                int pageSize = 7; // số sản phẩm hiển thị trên mỗi trang
                int pageIndex = page.HasValue ? page.Value : 1; // trang hiện tại, nếu không có thì mặc định là 1

                // Calculate the number of items to skip
                int itemsToSkip = (pageIndex - 1) * pageSize;

                // Sort the orderDetails based on a suitable property before applying Skip and Take
                orderDetails = orderDetails.OrderBy(o => o.Od_id);

                // Get the desired page of items
                var pagedOrderDetails = orderDetails.Skip(itemsToSkip).Take(pageSize).ToList();

                // Convert the pagedOrderDetails to IPagedList
                IPagedList<Order_detail> pagedList = new StaticPagedList<Order_detail>(pagedOrderDetails, pageIndex, pageSize, orderDetails.Count());

                // Pass the filtered order details to the view
                return View(pagedList);
            }
            else
            {
                // User is not authenticated, you can handle this accordingly (e.g., redirect to login page)
                return RedirectToAction("Login", "Account");
            }
        }



        public async Task<ActionResult> tt(int? paymentStatusFilter)
        {
            // Check if the user is authenticated
            if (User.Identity.IsAuthenticated)
            {
                var loggedInUserId = User.Identity.GetUserId();
                var orderDetails = db.Order_detail.Include(o => o.Order).Include(o => o.Product).Where(i => i.Order.Od_name == loggedInUserId);

                if (paymentStatusFilter.HasValue)
                {
                    int idThanhToan = paymentStatusFilter.Value;
                    orderDetails = orderDetails.Where(o => o.Order.idthanhtoan == idThanhToan);
                }

                // Pass the filtered order details to the view
                return View("Index", await orderDetails.ToListAsync());

            }
            else
            {
                // User is not authenticated, you can handle this accordingly (e.g., redirect to login page)
                return RedirectToAction("Login", "Account");
            }
        }
    }
}
