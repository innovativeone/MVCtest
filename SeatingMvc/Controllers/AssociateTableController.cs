using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SeatingMvc.Components.Data;

namespace SeatingMvc.Controllers
{
    public class AssociateTableController : Controller
    {
        //
        // GET: /AssociateTable/

        public ActionResult Index()
        {
            var db = Connectivity.GetSeatingEntities();
            var tables = db.Tables.ToList();
            return View(tables);
        }

       



    }
}
