using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.EntityClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SeatingMvc.Components.Data;

namespace SeatingMvc.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult People(string search)
        {
            var db = Connectivity.GetSeatingEntities();
            var people = db.People.ToList();
            if (search != "" && search != null)
            {
                people = people.Where(x => x.FirstName == search || x.Lastname == search).ToList();
            }
            else
            {
                people = people.Where(x => true).ToList();
            }

            return View(people);
        }

    }
}
