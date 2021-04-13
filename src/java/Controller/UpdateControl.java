/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.SanPhamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SanPham;

/**
 *
 * @author longd
 */
public class UpdateControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      SanPhamDAO db = new SanPhamDAO();
       int id = Integer.parseInt(request.getParameter("id"));
        ArrayList<SanPham> listsp = db.getup(id);
         request.setAttribute("listsp",listsp);
        request.getRequestDispatcher("update.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int uid = Integer.parseInt(request.getParameter("uid"));
        int mdm = Integer.parseInt(request.getParameter("mdm"));
        String tsp = request.getParameter("tsp");
        String si = request.getParameter("si");
        String iu = request.getParameter("iu");
        float gi = Float.parseFloat(request.getParameter("gi"));

        SanPham e = new SanPham();
        e.setMaDanhMuc(mdm);
        e.setTenSanPham(tsp);
        e.setSize(si);
        e.setImgUrl(iu);
        e.setGia(gi);
        SanPhamDAO db = new SanPhamDAO();
        db.update(e, uid);
        response.sendRedirect("admin");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
