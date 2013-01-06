using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using KebajaProject.Models;

namespace KebajaProject.Controllers
{
    public class themesController : Controller
    {
        private KebajaEntities _db = new KebajaEntities();

        //
        // GET: /Themes/

        public ActionResult Index()
        {
            //int id_theme = Request.Params["id"];

            // if param

            // else
            var themes = (from t in _db.themes
                          select t).OrderBy(t => t.title);
            // OrderByDescending

            //ViewData["themes"] = themes.ToList();

            return View(themes.ToList());
        }

        public ActionResult Read()
        {
            // a modifier
            var themes = (from m in _db.messages
                          where m.is_news == true
                          select m);
            /*
             var news = (from m in _db.messages
                       where m.is_news == true
                       select m).OrderByDescending(m => m.date_post);

             return View(news.ToList());
             * 
             */

            return View();
        }

        public ActionResult Add()
        {
            return View();
        }


    }
}
