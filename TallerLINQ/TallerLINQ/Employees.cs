using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TallerLINQ
{
    public partial class Employees
    {
        public string NombreCompleto()
        {
            return LastName + "   " + FirstName;
        }
        public string DatosCompleto()
        {
            return Title + " - " + BirthDate + " - " + HireDate + " - " + Address;
        }
    }
}