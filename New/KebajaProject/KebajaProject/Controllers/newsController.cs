using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using KebajaProject.Models;

namespace KebajaProject.Controllers
{
    public class newsController : Controller
    {

        private KebajaEntities _db = new KebajaEntities();
        //
        // GET: /News/

        public ActionResult Index()
        {
            var news = (from m in _db.messages
                        where m.is_news == true
                        select m).OrderByDescending(m => m.date_post);

              return View(news.ToList());
        }



        // ---------
        // - LIKES -
        // ---------

        public ActionResult Like(int id)
        {
            var messageToLike = (from m in _db.messages
                              where m.id_message == id
                              select m).First();

            return View(messageToLike);
        }


        [HttpPost]
        public ActionResult Like(int id, messages messageToLike)
        {
            if (!ModelState.IsValid)
                return View();

            try
            {
                messageToLike.id_message = id;

                var originalMessage = (from m in _db.messages
                                    where m.id_message == messageToLike.id_message
                                    select m).First();

                // TODO
                var user = (from m in _db.likes
                            where m.id_message == messageToLike.id_message 
                            //where m.id_user == profile.id_user
                            select m);

               // TryUpdateModel(messageToLike,

                _db.messages.ApplyCurrentValues(messageToLike);
                _db.SaveChanges();


                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }



        // -------
        // - ADD -
        // -------

        public ActionResult Add()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Add([Bind(Exclude = "id_message")] messages messageToAdd)
        {
            if (!ModelState.IsValid)
                return View();

            try
            {
                _db.messages.AddObject(messageToAdd);
                _db.SaveChanges();

                return RedirectToAction("index");
            }
            catch
            {
                return View();
            }
        }



        // -----------
        // - COMMENT -
        // -----------

        public ActionResult Comment(int id)
        {
            var comments = (from m in _db.comments
                            where m.id_message == id
                            select m).OrderByDescending(m => m.date_post);

            var originalMessage = (from m in _db.messages
                                   where m.id_message == id
                                   select m).First();

            return View("comment", new CommentModels(originalMessage, comments));
        }


        public ActionResult PostComment(int id)
        {
            return View();
        }


        [HttpPost]
        public ActionResult PostComment(int id, [Bind(Exclude = "id_comment, id_message")] comments commentToAdd)
        {
            if (!ModelState.IsValid)
                return View();

            try
            {
                commentToAdd.id_message = id;
                _db.comments.AddObject(commentToAdd);
                _db.SaveChanges();

                int stor = id;

                return RedirectToAction("Comment", new { id = stor });
            }
            catch
            {
                return View();
            }
        }
    }
}
