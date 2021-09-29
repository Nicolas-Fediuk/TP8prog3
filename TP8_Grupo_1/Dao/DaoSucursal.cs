using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class DaoSucursal
    {
        
        AccesoDatos ds = new AccesoDatos();

        
        public Sucursal getSucursal(Sucursal cat)
        {
            
            DataTable tabla = ds.ObtenerTabla("Sucursal", "Select * from Sucursal where Id_Sucursal=" + cat.getIdSucursal());
            cat.setIdSucursal(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            cat.setNombreSucursal(tabla.Rows[0][1].ToString());
            cat.setDescripcion(tabla.Rows[0][2].ToString());
            cat.setIdProvincia(Convert.ToInt32(tabla.Rows[0][3].ToString()));
            cat.setDireccion(tabla.Rows[0][4].ToString());
            return cat;
        }

       
        public Boolean existeSucursal(Sucursal cat)
        {
            string consulta = "Select * from Sucursal where NombreSucursal='" + cat.getNombreSucursal() + "'";
            return ds.existe(consulta);
        }

        
        public DataTable getTablaSucursal()
        {
            
            DataTable tabla = ds.ObtenerTabla("Sucursal", "Select Id_Sucursal,NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal from Sucursal");
            return tabla;
        }

        public int eliminarSucursal(Sucursal cat)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroSucursalEliminar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarSucursal");
        }

        public int agregarSucursal(Sucursal cat)
        {
            cat.setIdSucursal(ds.ObtenerMaximo("Select max(idSucursal)from Sucursal") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosSucursalAgregar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarSucursal");
        }

        private void ArmarParametroSucursalEliminar(ref SqlCommand comando, Sucursal cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@IDSUCURSAL", SqlDbType.Int);
            SqlParametros.Value = cat.getIdSucursal();

        }

        private void ArmarParametrosSucursalAgregar(ref SqlCommand comando, Sucursal cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@IDSUCURSAL", SqlDbType.Int);
            SqlParametros.Value = cat.getIdSucursal();
            SqlParametros = comando.Parameters.Add("@NOMBRESUCURSAL", SqlDbType.NVarChar);
            SqlParametros.Value = cat.getNombreSucursal();
            SqlParametros = comando.Parameters.Add("@DESCRIPCION", SqlDbType.NVarChar);
            SqlParametros.Value = cat.getDescripcion();
            SqlParametros = comando.Parameters.Add("@IDPROVINCIA", SqlDbType.NVarChar);
            SqlParametros.Value = cat.getIdProvincia();
            SqlParametros = comando.Parameters.Add("@DIRECCION", SqlDbType.NVarChar);
            SqlParametros.Value = cat.getDireccion();
        }
    }
}
