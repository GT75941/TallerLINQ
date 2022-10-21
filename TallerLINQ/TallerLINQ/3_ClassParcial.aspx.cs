using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TallerLINQ
{
    public partial class _3_ClassParcial : System.Web.UI.Page
    {
        NorthwindDataContext northwind = new NorthwindDataContext();
        private IList <Customers> Listar()
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
            var consulta = from C in northwind.Customers
                           select new
                           {
                               Codigo = C.CustomerID,
                               Datos = C.NombreCustomers(),
                               Direccion = C.DatosCustomers(),
                           };
            gvRegistro.DataSource = consulta;
            gvRegistro.DataBind();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            var consulta = from P in northwind.Products
                           select new
                           {
                               Codigo = P.ProductID,
                               Nombre_ProveedorID = P.NombreProducto(),
                               Datos = P.DatosProducto(),
                           };
            gvRegistro.DataSource = consulta;
            gvRegistro.DataBind();
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            var consulta = from E in northwind.Employees
                           select new
                           {
                               Codigo = E.EmployeeID,
                               Nombre = E.NombreCompleto(),
                               Datos = E.DatosCompleto(),
                           };
            gvRegistro.DataSource = consulta;
            gvRegistro.DataBind();
        }
    }
}