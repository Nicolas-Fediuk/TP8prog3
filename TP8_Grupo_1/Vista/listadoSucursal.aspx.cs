using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Negocio;
using Entidades;

namespace Vista
{
    public partial class listadoSucursal : System.Web.UI.Page
    {
        NegocioSucursal neg = new NegocioSucursal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable tablaCategoria = neg.getTabla();
                gvSucursal.DataSource = tablaCategoria;
                gvSucursal.DataBind();
            }
        }
    }
}