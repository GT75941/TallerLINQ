using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TallerLINQ
{
    public partial class Contact : Page
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
            //Productos con precio unitario >20 (Expresiones Lambda)
            var consulta = northwind.Products.Where(P => P.UnitPrice > 20);
            gvRegistro.DataSource = consulta;
            gvRegistro.DataBind();
        }
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            //Empleados con fecha de nacimiento > 1950 (Expresiones Lambda)
            var consulta = northwind.Suppliers.Where(S => S.Country == "USA");
            gvRegistro.DataSource = consulta;
            gvRegistro.DataBind();
        }
        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            //Cliente que llegan a ser Owner = Dueño (Expresiones Lambda)
            var consulta = northwind.Customers.Where(C => C.ContactTitle == "Owner");
            gvRegistro.DataSource = consulta;
            gvRegistro.DataBind();
        }
    }
}