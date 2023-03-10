/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.ProductDAO;
import com.models.Cart;
import com.models.Product;
import jakarta.servlet.http.Cookie;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL7250
 */
public class ShowCartController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");

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
//       String path = request.getRequestURI();
//        if (path.endsWith("/Home/ShowCart")) {
//        List<Cart> list = new ArrayList<>();
//        Product product = new Product();
        ProductDAO dao = new ProductDAO();
//        list = dao.ListAllCart();
//        double total = 0;
//        for (Cart c : list) {
//            product = dao.getProductCart(c.getProduct_id());
//            total = total + product.getQuantity()* product.getProduct_price();
//        }
        Cookie arr[] = request.getCookies();
        List<Product> list = new ArrayList<>();
        for (Cookie o : arr) {
            if (o.getName().equals("id")) {
                String abc[] = o.getValue().split("/");
                for (String s : abc) {
                    if (!s.isEmpty()) {
                        list.add(dao.getProductCart(s));
                    }

                }
            }
        }
        for (int i = 0; i < list.size(); i++) {
            int count = 1;
            for (int j = i + 1; j < list.size(); j++) {
                if (list.get(i).getProduct_id() == list.get(j).getProduct_id()) {
                    count++;
                    list.remove(j);
                    j--;
                    list.get(i).setQuantity(count);
                }
            }
        }
        double total = 0;
        for (Product product : list) {
            total = total + product.getQuantity() * product.getProduct_price();
        }
        request.setAttribute("list", list);
        request.setAttribute("total", total);
        response.sendRedirect("Home.jsp");
//        request.setAttribute("list", list);
//        request.setAttribute("total", total);
//        request.getRequestDispatcher("Cart.jsp").forward(request, response);
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
