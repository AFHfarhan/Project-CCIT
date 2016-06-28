using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace CCITLibrary
{
    class Koneksi
    {
        public System.Data.SqlClient.SqlConnection con()
        {
           SqlConnection connection = new SqlConnection("Data Source = UGIISPOYOWIDODO; Initial Catalog= CCIT_Library; User ID=sa; Password=12345ugi");
           return connection;
        }
    }
}
