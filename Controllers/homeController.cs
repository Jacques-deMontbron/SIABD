using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{
    public class homeController : Controller
    {
        private KebajaEntities _db = new KebajaEntities();

        public ActionResult Index()
        {
            //ViewData["last_news"] = _db.news.ToList();

            ViewData["Message"] = "Bienvenue dans ASP.NET MVC !";

            return View();
        }

    }
}
