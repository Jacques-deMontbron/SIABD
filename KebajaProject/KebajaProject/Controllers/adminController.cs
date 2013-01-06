using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KebajaProject.Controllers
{
    public class adminController : Controller
    {
        //
        // GET: /Admin/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Addmember()
        {
            return View();
        }

        public ActionResult Editmember()
        {
            return View();
        }

        public ActionResult Edittheme()
        {
            return View();
        }

        public ActionResult Stats()
        {
            return View();
        }


    }
}
