using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{

    [HandleError]
    public class accountController : Controller
    {

        // **************************************
        // URL: /Account/Index
        // **************************************

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Mynews()
        {
            return View();
        }

        public ActionResult Mymessages()
        {
            return View();
        }


    }
}
