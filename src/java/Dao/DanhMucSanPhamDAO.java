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
import model.DanhMucSanPham;
import model.NguoiDung;

/**
 *
 * @author longd
 */
public class DanhMucSanPhamDAO extends BaseDAO{
     public ArrayList<DanhMucSanPham> getDMSP()
    {
        ArrayList<DanhMucSanPham> nd = new ArrayList<>();
        try {
            String sql = "select * from DanhmucSanPham";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                DanhMucSanPham d = new DanhMucSanPham();
               d.setMaDanhmuc(rs.getInt("MaDanhmuc"));
               d.setTenDanhMuc(rs.getString("TenDanhMuc"));
                nd.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return nd;
    }
}
