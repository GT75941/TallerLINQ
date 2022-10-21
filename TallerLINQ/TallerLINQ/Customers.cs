using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TallerLINQ
{
    public partial class Customers
    {
        public string NombreCustomers()
        {
            return ContactName + " - " + CompanyName;
        }
        public string DatosCustomers()
        {
            return ContactTitle + " - " + City + " - " + Address;
        }
    }
}