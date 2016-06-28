/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Badrus
 */
public class KoneksiDatabase {
    Connection con;
   public Connection Open()
    {
        try
        {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=PMBDatabase";
            con = DriverManager.getConnection(url,"sa","12345ugi");
            return con;
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
           return null;
        }
    }
}
