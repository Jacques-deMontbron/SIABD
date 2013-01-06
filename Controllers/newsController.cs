using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{
    public class newsController : Controller
    {

        private KebajaEntities _db = new KebajaEntities();
        //
        // GET: /News/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Like()
        {
            // Ajouter le like

            return RedirectToAction("Index"); // avec param du message
        }

        public ActionResult Add()
        {


            return View();
        }

        public ActionResult Comment()
        {
            return View();
        }


    }
}
