using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using KebajaProject.Models;

namespace KebajaProject.Models
{
    public class CommentModels
    {
        public System.Linq.IOrderedQueryable<KebajaProject.Models.comments> Comments { get; set; }
        public messages Message { get; set; }

        public CommentModels() { } 

        public CommentModels(messages message, System.Linq.IOrderedQueryable<KebajaProject.Models.comments> comments)
     {
          this.Comments = comments;
          this.Message = message;
     }
    }
}