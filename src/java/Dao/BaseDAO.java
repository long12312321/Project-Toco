/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author longd
 */
public abstract class BaseDAO {
    protected Connection connection;
    public BaseDAO()
    {
        try {
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Toco1";
            String user = "sa1";
            String pass = "123";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass)   ;
        } catch (Exception ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
