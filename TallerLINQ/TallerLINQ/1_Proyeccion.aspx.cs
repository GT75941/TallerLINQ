using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TallerLINQ
{
    public partial class About : Page
    {
        NorthwindDataContext northwind = new NorthwindDataContext();
        private IList<Customers> Listar()
        {
            var consulta = from C in northwind.Customers
                           select C;
            return consulta.ToList();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvRegistro.DataSource = Listar();
                gvRegistro.DataBind();
            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            var consulta = from E in northwind.Employees
                           where E.City == "London" // restriccion
                           select new
                           // proyeccion
                           {
                               NombresYApellidos = E.FirstName + "" + E.LastName,
                               Cumpleaños = E.BirthDate,
                               Dirección = E.Address,
                               Ciudad = E.City,

                           };
            gvRegistro.DataSource = consulta;
            gvRegistro.DataBind();
        }
    
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            var consulta = from C in northwind.Customers
                           where C.City == "México D.F." // restriccion
                           select new
                           // proyeccion
                           {
                               C.CompanyName,
                               C.ContactName,
                               C.ContactTitle,
                               C.Address,
                               C.City,
                               C.Country
                           };

            gvRegistro.DataSource = consulta;
            gvRegistro.DataBind();
        }
    }
}