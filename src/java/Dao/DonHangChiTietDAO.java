/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.DanhMucSanPham;
import model.DonHang;
import model.DonHangChiTiet;

/**
 *
 * @author longd
 */
public class DonHangChiTietDAO extends BaseDAO {

    public ArrayList<DonHangChiTiet> getDHCT() {
        ArrayList<DonHangChiTiet> nd = new ArrayList<>();
        try {
            String sql = "select MaDonHangCT,TenSanPham,SoLuongSP,Gia,Total * from DonHangChiTiet";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                DonHangChiTiet dh = new DonHangChiTiet();
                dh.setMaDonHangCT(rs.getInt(" MaDonHangCT"));
                dh.setTenSanPham(rs.getString("TenSanPham"));
                dh.setSoLuongSP(rs.getFloat("SoLuongSP"));
                dh.setGia(rs.getFloat("Gia"));
                dh.setTotal(rs.getFloat("Total"));
              
                nd.add(dh);
            }
        } catch (SQLException ex) {
            Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return nd;
    }

    public void insert(DonHang d) {
        try {
            String sql = "INSERT INTO [DonHang]\n"
                    + "           ([NgayDatHang]\n"
                    + "           ,[Ten]\n"
                    + "           ,[SoLuongSP]\n"
                    + "           ,[Total]\n"
                    + "           ,[TenSanPham]\n"
                    + "           ,[Gia])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
        
            statement.setDate(1, d.getNgayDat());
            statement.setString(2, d.getTen());
            statement.setFloat(3, d.getSoLuongSP());
            statement.setFloat(4, d.getTotal());
            statement.setString(5, d.getTenSanPham());
            statement.setFloat(6, d.getGia());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DonHangChiTietDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
