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
import model.DonHang;
import model.SanPham;

/**
 *
 * @author longd
 */
public class DonHangDAO extends BaseDAO{
     public ArrayList<DonHang> getALL(String name) {
        ArrayList<DonHang> nd = new ArrayList<>();
        try {
            String sql = "select MaDonHang,NgayDatHang,Ten,SoLuongSP,Total ,TenSanPham ,Gia  from DonHang where ten='" + name + "'";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                DonHang d = new DonHang();
                d.setMaDonHang(rs.getInt("MaDonHang"));
                d.setNgayDat(rs.getDate("NgayDatHang"));
                d.setTen(rs.getString("Ten"));
                d.setSoLuongSP(rs.getFloat("SoLuongSP"));
                d.setTotal(rs.getFloat("Total"));
                d.setTenSanPham(rs.getString("TenSanPham"));
                d.setGia(rs.getFloat("Gia"));
                nd.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return nd;
    }
    
}
