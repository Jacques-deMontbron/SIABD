using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication1.Controllers
{
    public class newsController : Controller
    {
        //
        // GET: /News/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Like()
        {
            return View();
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
