/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ProductDAO;
import Models.Order;
import Models.Order_detail;
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
public class OrderController extends HttpServlet {

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
            out.println("<title>Servlet OrderController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderController at " + request.getContextPath() + "</h1>");
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
        if (path.endsWith("/Admin/Order")) {
            request.getRequestDispatcher("/table-data-order.jsp").forward(request, response);
        } else {
            if (path.endsWith("/Admin/Order/Add")) {
                request.getRequestDispatcher("/form-add-don-hang.jsp").forward(request, response);
            } else {
                if (path.startsWith("/Admin/Order/Edit/")) {
                    String[] s = path.split("/");

                    String id = s[s.length - 1];
                    ProductDAO dao = new ProductDAO();
                    Order or = dao.getOrder(id);
                    if (or == null) {
                        response.sendRedirect("/Admin/Order");
                    } else {
                        HttpSession session = request.getSession();
                        session.setAttribute("OR", or);
                        request.getRequestDispatcher("/form-edit-don-hang.jsp").forward(request, response);
                    }
                } else {
                    if (path.startsWith("/Admin/Order/Delete/")) {
                        String[] s = path.split("/");

                        String id = s[s.length - 1];
                        ProductDAO dao = new ProductDAO();
                        dao.DeleteProduct(id);
                        response.sendRedirect("/Admin/Order");
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
        ProductDAO dao = new ProductDAO();
        int n = dao.getMaxIDOrder();
        int m = dao.getMaxIDOrderDetail();

        if (request.getParameter("btnInsert") != null) {
            int oid = ++n;
            int odid = ++m;
            String oproduct = request.getParameter("txtProductID");
            String ocus = request.getParameter("txtCustomerID");
            String oquan = request.getParameter("txtQuantity");
            String oprice = request.getParameter("txtTPrice");
            String odate = request.getParameter("txtDate");
            String ostatus = request.getParameter("txtStatus");
            Order or = new Order(oid, Date.valueOf(odate), Integer.parseInt(ocus), Integer.parseInt(ostatus));
            Order_detail orl = new Order_detail(odid, oid, oproduct, Integer.parseInt(oquan), Integer.parseInt(oprice));
            int count = dao.AddOrder(or);

            if (count > 0) {
                count = 0;
                if (dao.checkIdExist(oid) == 1) {
                    count = dao.AddOrderDetail(orl);
                    if (count > 0) {
                        response.sendRedirect("/Admin/Order");
                    } else {
                        response.sendRedirect("/Admin/Order/Add");
                    }
                }
            } else {
                response.sendRedirect("/Admin/Order/Add");
            }
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
