/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.AccountDAO;
import DAO.ProductDAO;
import Models.Account;
import Models.Order;
import Models.Order_detail;
import Models.Product;
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
                    AccountDAO daos = new AccountDAO();
                    Order_detail ord = dao.getOrderDetails(id);
                    Order or = dao.getOrder(id);
                    Account ac = daos.getAccount(id);
                    Product pt = dao.getProduct(ord.getProduct_id());
                    if (or == null) {
                        response.sendRedirect("/Admin/Order");
                    } else {
                        HttpSession session = request.getSession();
                        session.setAttribute("PT", pt);
                        session.setAttribute("AC", ac);
                        session.setAttribute("OR", or);
                        session.setAttribute("ORD", ord);
                        request.getRequestDispatcher("/form-edit-don-hang.jsp").forward(request, response);
                    }
                } else {
                    if (path.startsWith("/Admin/Order/Delete/")) {
                        String[] s = path.split("/");

                        String id = s[s.length - 1];
                        ProductDAO dao = new ProductDAO();
                        dao.DeleteOrderDetail(id);
                        dao.DeleteOrder(id);
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
        if (request.getParameter("btnUpdate") != null) {
            String oid = request.getParameter("txtOrderID");
            String oproduct = request.getParameter("txtProductID");
            String ocus = request.getParameter("txtCustomerID");
            String oquan = request.getParameter("txtQuantity");
            String oprice = request.getParameter("txtTPrice");
            String odate = request.getParameter("txtDate");
            String ostatus = request.getParameter("txtStatus");

            Order or = new Order(Integer.parseInt(oid), Date.valueOf(odate), Integer.parseInt(ocus), Integer.parseInt(ostatus));
            Order_detail orl = new Order_detail(dao.getOrderDetails(oid).getOrder_detail_id(), Integer.parseInt(oid), oproduct, Integer.parseInt(oquan), Integer.parseInt(oprice));
            dao.UpdateOrder(or);
            dao.UpdateOrderDetail(orl);
            Product oldProduct = dao.getProduct(oproduct);
            if (oldProduct.getStatus() != Integer.parseInt(ostatus) && !ostatus.equals("3")) {
                UpdateQuantityProduct(Integer.parseInt(oquan), oproduct);
                response.sendRedirect("/Admin/Order");
            } else if (oldProduct.getStatus() == 2 && Integer.parseInt(ostatus) == 1) {
                response.sendRedirect("/Admin/Order");
            } else if (oldProduct.getStatus() != Integer.parseInt(ostatus) && Integer.parseInt(ostatus) == 0) {
                UpdateQuantityProduct(-Integer.parseInt(oquan), oproduct);
                response.sendRedirect("/Admin/Order");
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

    private void UpdateQuantityProduct(int quantity, String product_id) {
        ProductDAO dao = new ProductDAO();
        dao.UpdateQuantityProduct(quantity, product_id);
    }
}
