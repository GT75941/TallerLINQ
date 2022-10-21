using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TallerLINQ
{
    public partial class _5_Cruds : System.Web.UI.Page
    {
        NorthwindDataContext northwind = new NorthwindDataContext();
        private IList<Categories> Listar1()
        {
            var consulta = from C in northwind.Categories
                           select C;
            return consulta.ToList();
        }
        private IList<Shippers> Listar2()
        {
            var consulta = from C in northwind.Shippers
                           select C;
            return consulta.ToList();
        }
        private IList<Customers> Listar3()
        {
            var consulta = from C in northwind.Customers
                           select C;
            return consulta.ToList();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvRegistro.DataSource = Listar1();
                gvRegistro.DataBind();
                gvRegistro1.DataSource = Listar2();
                gvRegistro1.DataBind();
                gvRegistro2.DataSource = Listar3();
                gvRegistro2.DataBind();
            }
        }

        protected void btnAgregar1_Click(object sender, EventArgs e)
        {
            Categories categories = new Categories();
            categories.CategoryID = (Convert.ToInt32(txtCategoryID1.Text) - 1);
            categories.CategoryName = txtCategoryName1.Text.Trim();
            categories.Description = txtDescription1.Text.Trim();
            northwind.Categories.InsertOnSubmit(categories);
            try
            {
                northwind.SubmitChanges();
                gvRegistro.DataSource = Listar1();
                gvRegistro.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
        protected void btnActualizar1_Click(object sender, EventArgs e)
        {
            Categories categories = northwind.Categories.Single(C => C.CategoryID == int.Parse(txtCategoryID1.Text));
            categories.CategoryName = txtCategoryName1.Text;
            categories.Description = txtDescription1.Text;
            try
            {
                northwind.SubmitChanges();
                gvRegistro.DataSource = Listar1();
                gvRegistro.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        protected void btnEliminar1_Click(object sender, EventArgs e)
        {
            var CategoriaEliminada = (from C in northwind.Categories
                                     where C.CategoryID.Equals(txtCategoryID1.Text)
                                     select C).First();
            northwind.Categories.DeleteOnSubmit(CategoriaEliminada);
            try
            {
                northwind.SubmitChanges();
                gvRegistro.DataSource = Listar1();
                gvRegistro.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        protected void btnBuscar1_Click(object sender, EventArgs e)
        {
            var consulta = from C in northwind.Categories
                           where C.CategoryID == int.Parse(txtCategoryID1.Text)
                           select C;
            gvRegistro.DataSource = consulta;
            gvRegistro.DataBind();
        }

        protected void btnAgregar2_Click(object sender, EventArgs e)
        {
            Shippers shippers = new Shippers();
            shippers.ShipperID = (Convert.ToInt32(txtShipperID1.Text) - 1);
            shippers.CompanyName = txtCompanyName1.Text.Trim();
            shippers.Phone = txtPhone1.Text.Trim();
            northwind.Shippers.InsertOnSubmit(shippers);
            try
            {
                northwind.SubmitChanges();
                gvRegistro1.DataSource = Listar2();
                gvRegistro1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        protected void btnActualizar2_Click(object sender, EventArgs e)
        {
            Shippers shippers = northwind.Shippers.Single(S => S.ShipperID == int.Parse(txtShipperID1.Text));
            shippers.CompanyName = txtCompanyName1.Text.Trim();
            shippers.Phone = txtPhone1.Text.Trim();
            try
            {
                northwind.SubmitChanges();
                gvRegistro1.DataSource = Listar2();
                gvRegistro1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        protected void btnEliminar2_Click(object sender, EventArgs e)
        {
            var ShippersEliminado = (from S in northwind.Shippers
                                      where S.ShipperID.Equals(txtShipperID1.Text)
                                      select S).First();
            northwind.Shippers.DeleteOnSubmit(ShippersEliminado);
            try
            {
                northwind.SubmitChanges();
                gvRegistro1.DataSource = Listar2();
                gvRegistro1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        protected void btnBuscar2_Click(object sender, EventArgs e)
        {
            var consulta = from C in northwind.Shippers
                           where C.ShipperID == int.Parse(txtShipperID1.Text)
                           select C;
            gvRegistro1.DataSource = consulta;
            gvRegistro1.DataBind();
        }

        protected void btnAgregar3_Click(object sender, EventArgs e)
        {
            Customers customers = new Customers();
            customers.CustomerID = txtCustomerID2.Text.Trim();
            customers.CompanyName = txtCompanyName2.Text.Trim();
            customers.ContactName = txtContactName2.Text.Trim();
            customers.ContactTitle = txtContactTitle2.Text.Trim();
            customers.Address = txtAddress2.Text.Trim();
            customers.City = txtCity2.Text.Trim();
            customers.Region = txtRegion2.Text.Trim();
            customers.PostalCode = txtPostalCode2.Text.Trim();
            customers.Country = txtCountry2.Text.Trim();
            customers.Phone = txtPhone2.Text.Trim();
            customers.Fax = txtFax2.Text.Trim();
            northwind.Customers.InsertOnSubmit(customers);
            try
            {
                northwind.SubmitChanges();
                gvRegistro2.DataSource = Listar3();
                gvRegistro2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        protected void btnActualizar3_Click(object sender, EventArgs e)
        {
            Customers customers = northwind.Customers.Single(C => C.CustomerID == txtCustomerID2.Text);
            customers.CompanyName = txtCompanyName2.Text;
            customers.ContactName = txtContactName2.Text;
            customers.ContactTitle = txtContactTitle2.Text;
            customers.Address = txtAddress2.Text;
            customers.City = txtCity2.Text;
            customers.Region = txtRegion2.Text;
            customers.PostalCode = txtPostalCode2.Text;
            customers.Country = txtCountry2.Text;
            customers.Phone = txtPhone2.Text;
            customers.Fax = txtFax2.Text;
            try
            {
                northwind.SubmitChanges();
                gvRegistro2.DataSource = Listar3();
                gvRegistro2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        protected void btnEliminar3_Click(object sender, EventArgs e)
        {
            var CustomersEliminado = (from C in northwind.Customers
                                     where C.CustomerID.Equals(txtCustomerID2.Text)
                                     select C).First();
            northwind.Customers.DeleteOnSubmit(CustomersEliminado);
            try
            {
                northwind.SubmitChanges();
                gvRegistro2.DataSource = Listar3();
                gvRegistro2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        protected void btnBuscar3_Click(object sender, EventArgs e)
        {
            var consulta = from C in northwind.Customers
                           where C.CustomerID == (txtCustomerID2.Text)
                           select C;
            gvRegistro2.DataSource = consulta;
            gvRegistro2.DataBind();
        }
    }
}