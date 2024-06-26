﻿using System;
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

namespace Food_Web.Areas.Store.Controllers
{
    public class DiscountsController : Controller
    {
        private FoodcontextDB db = new FoodcontextDB();

        // GET: Store/Discounts
        public async Task<ActionResult> Index()
        {
            // Get the id of the currently logged in store
            var storeId = User.Identity.GetUserId();

            // Get the discounts that belong to the logged in store
            var discounts = await db.Discounts.Where(d => d.StoreId == storeId).ToListAsync();

            return View(discounts);
        }

        // GET: Store/Discounts/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Discount discount = await db.Discounts.FindAsync(id);
            if (discount == null)
            {
                return HttpNotFound();
            }
            return View(discount);
        }

        // GET: Store/Discounts/Create
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "DiscountPercent,EndDate,SoLuong")] Discount discount)
        {
            if (ModelState.IsValid)
            {
                discount.Id = db.Discounts.Max(d => d.Id) + 1;
                // Find the store that belongs to the user
                discount.StoreId = User.Identity.GetUserId();

                // Set the start date to the current date and time
                discount.StartDate = DateTime.Now;


                discount.Code = Guid.NewGuid().ToString().Substring(0, 8);

                // Add the discount to the database
                db.Discounts.Add(discount);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(discount);
        }

       
        // GET: Store/Discounts/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Discount discount = await db.Discounts.FindAsync(id);
            if (discount == null)
            {
                return HttpNotFound();
            }
            return View(discount);
        }

        // POST: Store/Discounts/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,Code,StoreId,DiscountPercent,StartDate,SoLuong,EndDate")] Discount discount)
        {
            if (ModelState.IsValid)
            {
                db.Entry(discount).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(discount);
        }

        [HttpPost]
        public JsonResult RemoveDiscout(int id)
        {
            var dc = db.Discounts.SingleOrDefault(x => x.Id == id);
            if (dc != null)
            {
                db.Discounts.Remove(dc);
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
    }
}
