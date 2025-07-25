/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.parent;

import dal.KindergartnerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author Windows 10 TIMT
 */

public class ChildDetailControl extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet StudentInforPage</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StudentInforPage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession(true);
        Account acc = (Account) session.getAttribute("account");
        String mainchildid = request.getParameter("mainchildid");
        KindergartnerDAO d = new KindergartnerDAO();
        if (acc != null) {
            session.setAttribute("mainchild",d.getKidInfoById(Integer.parseInt(mainchildid)));
            if (action.equalsIgnoreCase("feedback")) {
                request.getRequestDispatcher("parent/childfb.jsp").forward(request, response);
            } else if (action.equalsIgnoreCase("attendance")) {
                request.getRequestDispatcher("parent/childdetails.jsp").forward(request, response);
            } else if (action.equalsIgnoreCase("childprofile")) {
                request.getRequestDispatcher("parent/childprofile.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("error", "Do you want to create an account?");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
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
        processRequest(request, response);
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
