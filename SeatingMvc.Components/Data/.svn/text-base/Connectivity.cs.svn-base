using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.EntityClient;
using System.Linq;
using System.Text;

namespace SeatingMvc.Components.Data
{
    public class Connectivity
    {
        public static SeatingDbEntities GetSeatingEntities()
        {
            var conn = new EntityConnection(ConfigurationManager.ConnectionStrings["SeatingDbEntities"].ConnectionString);
            var db = new SeatingDbEntities(conn);
            return db;
        }

    }
}
