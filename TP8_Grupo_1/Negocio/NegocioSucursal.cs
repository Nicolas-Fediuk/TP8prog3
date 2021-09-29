﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Dao;
using Entidades;

namespace Negocio
{
    public class NegocioSucursal
    {
        
        public DataTable getTabla()
        {
            DaoSucursal dao = new DaoSucursal();
            return dao.getTablaSucursal();
        }

       
        public Sucursal get(int id)
        {
            DaoSucursal dao = new DaoSucursal();
            Sucursal cat = new Sucursal();
            cat.setIdSucursal(id);
            return dao.getSucursal(cat);
        }

        public bool eliminarSucursal(int id)
        {
            
            DaoSucursal dao = new DaoSucursal();
            Sucursal cat = new Sucursal();
            cat.setIdSucursal(id);
            int op = dao.eliminarSucursal(cat);
            if (op == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool agregarSucursal(string nombre)
        {
            int cantFilas = 0;

            Sucursal cat = new Sucursal();
            cat.setNombreSucursal(nombre);

            DaoSucursal dao = new DaoSucursal();
            if (dao.existeSucursal(cat) == false)
            {
                cantFilas = dao.agregarSucursal(cat);
            }
            if (cantFilas == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
