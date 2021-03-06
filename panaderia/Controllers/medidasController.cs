﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using panaderia.Models;

namespace panaderia.Controllers
{
    public class medidasController : Controller
    {
        private PanaderiaEntities db = new PanaderiaEntities();

        // GET: medidas
        public ActionResult Index()
        {
            return View(db.medidaSet.ToList());
        }

        // GET: medidas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            medida medida = db.medidaSet.Find(id);
            if (medida == null)
            {
                return HttpNotFound();
            }
            return View(medida);
        }

        // GET: medidas/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: medidas/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,nombre")] medida medida)
        {
            if (ModelState.IsValid)
            {
                db.medidaSet.Add(medida);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(medida);
        }

        // GET: medidas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            medida medida = db.medidaSet.Find(id);
            if (medida == null)
            {
                return HttpNotFound();
            }
            return View(medida);
        }

        // POST: medidas/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,nombre")] medida medida)
        {
            if (ModelState.IsValid)
            {
                db.Entry(medida).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(medida);
        }

        // GET: medidas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            medida medida = db.medidaSet.Find(id);
            if (medida == null)
            {
                return HttpNotFound();
            }
            return View(medida);
        }

        // POST: medidas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            medida medida = db.medidaSet.Find(id);
            db.medidaSet.Remove(medida);
            db.SaveChanges();
            return RedirectToAction("Index");
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
