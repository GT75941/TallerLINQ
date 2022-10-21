using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TallerLINQ
{
    public partial class _4_ConsultasJoin : System.Web.UI.Page
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
                gvRegistro1.DataSource = Listar();
                gvRegistro1.DataBind();
            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            // Mostrar proyecciones de la clase
            // Proyeccion: Mostrar ciertas columnas
            var consulta = from O in northwind.Orders
                           join OD in northwind.Order_Details on O.OrderID equals OD.OrderID
                           join P in northwind.Products on OD.ProductID equals P.ProductID
                           select new
                           {
                               O.OrderDate,
                               O.ShipCity,
                               O.ShipAddress,
                               P.ProductName,
                               P.UnitsInStock,
                               OD.UnitPrice
                           };
            gvRegistro1.DataSource = consulta;
            gvRegistro1.DataBind();
        }
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            // Mostrar proyecciones de la clase
            // Proyeccion: Mostrar ciertas columnas
            var consulta = from E in northwind.Employees
                           join ET in northwind.EmployeeTerritories on E.EmployeeID equals ET.EmployeeID
                           join T in northwind.Territories on ET.TerritoryID equals T.TerritoryID
                           join R in northwind.Region on T.RegionID equals R.RegionID
                           select new
                           {
                               E.FirstName,
                               E.LastName,
                               E.Title,
                               T.TerritoryDescription,
                               R.RegionDescription
                           };
            gvRegistro1.DataSource = consulta;
            gvRegistro1.DataBind();
        }
        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            // Mostrar proyecciones de la clase
            // Proyeccion: Mostrar ciertas columnas
            var consulta = from E in northwind.Employees
                           join O in northwind.Orders on E.EmployeeID equals O.EmployeeID
                           join D in northwind.Order_Details on O.OrderID equals D.OrderID
                           select new
                           {
                               D.Products.ProductName,
                               D.Quantity,
                               O.CustomerID,
                               E.FirstName,
                               E.LastName,
                               E.HomePhone
                           };
            gvRegistro1.DataSource = consulta;
            gvRegistro1.DataBind();
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            // Mostrar proyecciones de la clase
            // Proyeccion: Mostrar ciertas columnas
            var consulta = from C in northwind.Customers
                           join O in northwind.Orders on C.CustomerID equals O.CustomerID
                           join D in northwind.Order_Details on O.OrderID equals D.OrderID
                           select new
                           {
                               D.Products.ProductName,
                               D.UnitPrice,
                               O.RequiredDate,
                               O.ShippedDate,
                               C.CompanyName,
                               C.Country,
                               C.Address
                           };
            gvRegistro1.DataSource = consulta;
            gvRegistro1.DataBind();
        }
    }
}