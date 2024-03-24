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

namespace Food_Web.Controllers
{
    public class DiscountssController : Controller
    {
        private FoodcontextDB db = new FoodcontextDB();

        // GET: Discounts
        public async Task<ActionResult> Index()
        {
            return View(await db.Discounts.ToListAsync());
        }

    }
}
