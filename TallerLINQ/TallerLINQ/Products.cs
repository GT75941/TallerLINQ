using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TallerLINQ
{
    public partial class Products
    {
        public string NombreProducto()
        {
            return ProductName + " - " + SupplierID;
        }
        public string DatosProducto()
        {
            return QuantityPerUnit + " - " + UnitPrice + " - " + UnitsInStock;
        }
    }
}