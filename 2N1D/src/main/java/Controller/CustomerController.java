/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.AccountDAO;
import Models.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;

/**
 *
 * @author User
 */
public class CustomerController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CustomerController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CustomerController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String path = request.getRequestURI();
        if (path.endsWith("/Admin/Customer")) {
            request.getRequestDispatcher("/table-data-table.jsp").forward(request, response);
        } else {
            if (path.endsWith("/Admin/Customer/Add")) {
                request.getRequestDispatcher("/form-add-khach-hang.jsp").forward(request, response);
            } else {
                if (path.startsWith("/Admin/Customer/Edit/")) {
                    String[] s = path.split("/");

                    String id = s[s.length - 1];
                    AccountDAO dao = new AccountDAO();
                    Account ac = dao.getAccount(id);
                    if (ac == null) {
                        response.sendRedirect("/Admin/Customer");
                    } else {
                        HttpSession session = request.getSession();
                        session.setAttribute("AC", ac);
                        request.getRequestDispatcher("/form-edit-khach-hang.jsp").forward(request, response);
                    }
                } else {
                    if (path.startsWith("/Admin/Customer/Delete/")) {
                        String[] s = path.split("/");

                        String id = s[s.length - 1];
                        AccountDAO dao = new AccountDAO();
                        dao.DeleteCustomer(id);
                        response.sendRedirect("/Admin/Customer");
                    }
                }
            }

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
        if (request.getParameter("btnInsert") != null) {
            String cid = request.getParameter("txtCustomerID");
            String cus = request.getParameter("txtUsername");
            String cname = request.getParameter("txtCustomerName");
            String cdob = request.getParameter("txtCustomerDOB");
            String cemail = request.getParameter("txtCustomerEmail");
            String cphone = request.getParameter("txtCustomerPhoneNumber");
            String cpwd = request.getParameter("txtCustomerPassword");
            String csex = request.getParameter("txtCustomerSex");
            String caddress = request.getParameter("txtCustomerAddress");
            Account ac = new Account(Integer.parseInt(cid), cus, cname, Integer.parseInt(csex), Date.valueOf(cdob), cemail, cphone, cpwd, 1, caddress);
            AccountDAO dao = new AccountDAO();
            int count = dao.AddNewCustomer(ac);
            if (count > 0) {
                response.sendRedirect("/Admin/Customer");
            } else {
                response.sendRedirect("/Admin/Customer/Add");
            }
        }
        if (request.getParameter("btnUpdate") != null) {
            String cid = request.getParameter("txtCustomerID");
            String cus = request.getParameter("txtUsername");
            String cname = request.getParameter("txtCustomerName");
            String cdob = request.getParameter("txtCustomerDOB");
            String cemail = request.getParameter("txtCustomerEmail");
            String cphone = request.getParameter("txtCustomerPhoneNumber");
            String cpwd = request.getParameter("txtCustomerPassword");
            String csex = request.getParameter("txtCustomerSex");
            String caddress = request.getParameter("txtCustomerAddress");
            Account ac = new Account(Integer.parseInt(cid), cus, cname, Integer.parseInt(csex), Date.valueOf(cdob), cemail, cphone, cpwd, 1, caddress);
            AccountDAO dao = new AccountDAO();
            dao.UpdateCustomer(ac);
            response.sendRedirect("/Admin/Customer/Edit/");
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
