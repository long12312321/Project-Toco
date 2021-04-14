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
import model.NguoiDung;

/**
 *
 * @author longd
 */
public class NguoiDungDAO extends BaseDAO {

    public ArrayList<NguoiDung> getND() {
        ArrayList<NguoiDung> nd = new ArrayList<>();
        try {
            String sql = "select * from NguoiDung";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
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

    public void insert(NguoiDung nd) {

        try {
            String sql = "INSERT INTO [NguoiDung]\n"
                    + "           ([Taikhoan]\n"
                    + "           ,[MatKhau]\n"
                    + "           ,[Hoten]\n"
                    + "           ,[GioiTinh]\n"
                    + "           ,[NgaySinh]\n"
                    + "           ,[DiaChi]\n"
                    + "           ,[Sdt]\n"
                    + "           ,[NhomQuyen])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, nd.getTaiKhoan());
            statement.setString(2, nd.getMatKhau());
            statement.setString(3, nd.getHoTen());
            statement.setBoolean(4, nd.isGioiTinh());
            statement.setDate(5, (Date) nd.getNgaySinh());
            statement.setString(6, nd.getDiaChi());
             statement.setString(7, nd.getSdt());
               statement.setInt(8,2);
            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
