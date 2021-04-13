/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author longd
 */
public class DonHangChiTiet {
    private int maDonHangCT;
    private int maSanPham;
    private String tenSanPham;
    private float soLuongSP;
    private float gia;
    private float total;

    public int getMaDonHangCT() {
        return maDonHangCT;
    }

    public void setMaDonHangCT(int maDonHangCT) {
        this.maDonHangCT = maDonHangCT;
    }

    public int getMaSanPham() {
        return maSanPham;
    }

    public void setMaSanPham(int maSanPham) {
        this.maSanPham = maSanPham;
    }

    public String getTenSanPham() {
        return tenSanPham;
    }

    public void setTenSanPham(String tenSanPham) {
        this.tenSanPham = tenSanPham;
    }

    public float getSoLuongSP() {
        return soLuongSP;
    }

    public void setSoLuongSP(float soLuongSP) {
        this.soLuongSP = soLuongSP;
    }

    public float getGia() {
        return gia;
    }

    public void setGia(float gia) {
        this.gia = gia;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

   
}
