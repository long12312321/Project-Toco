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
public class SanPham {
    private int maSanPham ;
    private int maDanhMuc;
    private String tenSanPham;
    private String size;
    private String imgUrl;
    private float gia;

    public SanPham(int maSanPham, int maDanhMuc, String tenSanPham, String size, String imgUrl, float gia) {
        this.maSanPham = maSanPham;
        this.maDanhMuc = maDanhMuc;
        this.tenSanPham = tenSanPham;
        this.size = size;
        this.imgUrl = imgUrl;
        this.gia = gia;
    }

    public SanPham() {
    }

    public int getMaSanPham() {
        return maSanPham;
    }

    public void setMaSanPham(int maSanPham) {
        this.maSanPham = maSanPham;
    }

    public int getMaDanhMuc() {
        return maDanhMuc;
    }

    public void setMaDanhMuc(int maDanhMuc) {
        this.maDanhMuc = maDanhMuc;
    }

    public String getTenSanPham() {
        return tenSanPham;
    }

    public void setTenSanPham(String tenSanPham) {
        this.tenSanPham = tenSanPham;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public float getGia() {
        return gia;
    }

    public void setGia(float gia) {
        this.gia = gia;
    }

  
    
}
