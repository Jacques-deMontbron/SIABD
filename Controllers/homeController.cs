using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication1.Controllers
{
    [HandleError]
    public class homeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Bienvenue dans ASP.NET MVC !";

            return View();
        }

    }
}
