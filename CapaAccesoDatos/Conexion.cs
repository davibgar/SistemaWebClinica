using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace CapaAccesoDatos
{
    public class Conexion
    {
        #region "PATRON SINGLETON"
        private static Conexion conexion = null;
        private Conexion() { }
        public static Conexion getInstance()
        {
            if (conexion == null)
            {
                conexion = new Conexion();
            }
            return conexion;
        }
        #endregion

        public SqlConnection ConexionBD()
        {
            SqlConnection conexion = new SqlConnection();
            //conexion.ConnectionString = "Data Source=LENOVOLOQ; Initial Catalog=DBClinica_test; User ID=sa; Password=1234";
            conexion.ConnectionString = GetConnectionString();
            return conexion;
        }

        public String GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["local_clinica"].ConnectionString;
        }

    }
}
