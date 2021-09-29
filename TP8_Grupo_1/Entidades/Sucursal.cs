using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Sucursal
    {
        private int IdSucursal;
        private string NombreSucursal;
        private string Descripcion;
        private int IdProvincia;
        private string Direccion;

        public Sucursal()
        {

        }

        public void setIdSucursal(int id)
        {
            IdSucursal = id;
        }
        public int getIdSucursal()
        {
            return IdSucursal;
        }

        public void setNombreSucursal(string nombre)
        {
            NombreSucursal = nombre;
        }
        public string getNombreSucursal()
        {
            return NombreSucursal;
        }

        public void setDescripcion(string descripcion)
        {
            Descripcion = descripcion;
        }
        public string getDescripcion()
        {
            return Descripcion;
        }

        public void setIdProvincia(int provincia)
        {
            IdProvincia = provincia;
        }
        public int getIdProvincia()
        {
            return IdProvincia;
        }

        public void setDireccion(string direccion)
        {
            Direccion = direccion;
        }
        public string getDireccion()
        {
            return Direccion;
        }
    }
}
