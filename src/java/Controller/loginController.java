    package Controller;

import Dao.NguoiDungDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.NguoiDung;

/**
 *
 * @author longd
 */
public class loginController extends HttpServlet {

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
        NguoiDungDAO db = new NguoiDungDAO();
        ArrayList<NguoiDung> us = db.getND();
        request.setAttribute("us", us);
        request.getRequestDispatcher("login.jsp").forward(request, response); 
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
        String Account = request.getParameter("acc1");
        String Password = request.getParameter("pass1");
        NguoiDungDAO db = new NguoiDungDAO();
        ArrayList<NguoiDung> nd = db.getND();
        boolean status = false;
        for(NguoiDung n : nd){
            if(n.getTaiKhoan().equals(Account) && n.getMatKhau().equals(Password)){
                status = true;
                break;
            }
        }
        if (status){
            HttpSession session = request.getSession();
            session.setAttribute("TK", Account);
            session.setAttribute("MK", Password); 
            if(!Account.equals("admin")){
            response.sendRedirect("MilkTea");
            }else{
                 response.sendRedirect("admin");
            }
        } else {
            response.sendRedirect("login");
        }
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
