/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.GioiThieu;

/**
 *
 * @author longd
 */
public class GioiThieuDAO extends BaseDAO {
    public String getDepts()
    {
          String s ="";
        try {
            String sql = "Select NoiDung from GioiThieu";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
                GioiThieu d = new GioiThieu();
                d.setNoiDung(rs.getString("NoiDung"));
                s = rs.getString("NoiDung");
               
            
        } catch (SQLException ex) {
            Logger.getLogger(GioiThieuDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }
}
