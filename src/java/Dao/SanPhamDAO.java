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
import model.NguoiDung;
import model.SanPham;

/**
 *
 * @author longd
 */
public class SanPhamDAO extends BaseDAO {

    public ArrayList<SanPham> getup(int id) {
        ArrayList<SanPham> nd = new ArrayList<>();
        try {
            String sql = "select MaSanPham,MaDanhMuc,TenSanPham ,Size,ImgUrl,Gia  from SanPham where MaSanPham='" + id + "'";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                SanPham d = new SanPham();
                d.setMaSanPham(rs.getInt("MaSanPham"));
                d.setMaDanhMuc(rs.getInt("MaDanhMuc"));
                d.setTenSanPham(rs.getString("TenSanPham"));
                d.setSize(rs.getString("Size"));
                d.setImgUrl(rs.getString("ImgUrl"));
                d.setGia(rs.getFloat("Gia"));
                nd.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return nd;
    }

    public ArrayList<SanPham> getALL() {
        ArrayList<SanPham> nd = new ArrayList<>();
        try {
            String sql = "select MaSanPham,MaDanhMuc ,TenSanPham ,Size,ImgUrl,Gia  from SanPham ";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                SanPham d = new SanPham();
                d.setMaSanPham(rs.getInt("MaSanPham"));
                d.setMaDanhMuc(rs.getInt("MaDanhMuc"));
                d.setTenSanPham(rs.getString("TenSanPham"));
                d.setSize(rs.getString("Size"));
                d.setImgUrl(rs.getString("ImgUrl"));
                d.setGia(rs.getFloat("Gia"));
                nd.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return nd;
    }

    public ArrayList<SanPham> getKind(int id) {
        ArrayList<SanPham> nd = new ArrayList<>();
        try {
            String sql = "select MaSanPham,TenSanPham ,Size,ImgUrl,Gia  from SanPham where MaDanhMuc='" + id + "'";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                SanPham d = new SanPham();
                d.setMaSanPham(rs.getInt("MaSanPham"));
                d.setTenSanPham(rs.getString("TenSanPham"));
                d.setSize(rs.getString("Size"));
                d.setImgUrl(rs.getString("ImgUrl"));
                d.setGia(rs.getFloat("Gia"));
                nd.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return nd;
    }

    public SanPham getSPID(int productID) {
        try {
            String sql = "SELECT * FROM SanPham where MaSanPham = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, productID);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                SanPham P = new SanPham(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getFloat(6));
                return P;
            }
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int countPage() {
        ArrayList<SanPham> dummies = new ArrayList<>();
        try {
            String sql = "SELECT COUNT(*) as total FROM SanPham";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                int countPage = 0;
                countPage = rs.getInt("total") / 6;
                if (rs.getInt("total") % 6 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ArrayList<SanPham> getPaging(int index) {
        ArrayList<SanPham> nd = new ArrayList<>();
        try {
            String sql = "SELECT MaSanPham, MaDanhMuc,TenSanPham,Size, ImgUrl,Gia FROM(\n"
                    + "SELECT MaSanPham, MaDanhMuc,TenSanPham,Size, ImgUrl,Gia,\n"
                    + "ROW_NUMBER() OVER (ORDER BY MaSanPham) AS Seq FROM   SanPham)t\n"
                    + "WHERE Seq BETWEEN ? AND ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, ((index - 1) * 6) + 1);
            statement.setInt(2, (index * 6));
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                nd.add(new SanPham(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6)));

            }
            return nd;
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insert(SanPham d) {
        try {
            String sql = "INSERT INTO [SanPham]\n"
                    + "           ([MaDanhMuc]\n"
                    + "           ,[TenSanPham]\n"
                    + "           ,[Size]\n"
                    + "           ,[ImgUrl]\n"
                    + "           ,[Gia])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setInt(1, d.getMaDanhMuc());
            statement.setString(2, d.getTenSanPham());
            statement.setString(3, d.getSize());
            statement.setString(4, d.getImgUrl());
            statement.setFloat(5, d.getGia());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void Delete(int sid) {
        try {
            String sql = "DELETE from SanPham where MaSanPham=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, sid);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void update(SanPham e, int sid) {
        String sql = "UPDATE SanPham SET MaDanhMuc=?,TenSanPham=?,Size=?,ImgUrl=?,Gia=? where MaSanPham='" + sid + "'";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, e.getMaDanhMuc());
            ps.setString(2, e.getTenSanPham());
            ps.setString(3, e.getSize());
            ps.setString(4, e.getImgUrl());
            ps.setFloat(5, e.getGia());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
