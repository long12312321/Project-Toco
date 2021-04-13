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
import model.NguoiDung;

/**
 *
 * @author longd
 */
public class NguoiDungDAO extends BaseDAO{
    public ArrayList<NguoiDung> getND()
    {
        ArrayList<NguoiDung> nd = new ArrayList<>();
        try {
            String sql = "select * from NguoiDung";
             PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                NguoiDung d = new NguoiDung();
                d.setTaiKhoan(rs.getString("TaiKhoan"));
                d.setMatKhau(rs.getString("MatKhau"));
                d.setHoTen(rs.getString("Hoten"));
                d.setGioiTinh(rs.getBoolean("GioiTinh"));
                d.setNgaySinh(rs.getDate("NgaySinh"));
                d.setDiaChi(rs.getString("DiaChi"));
                d.setSdt(rs.getString("Sdt"));
                d.setNhomQuyen(rs.getInt("NhomQuyen"));
                nd.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return nd;
    }
}
