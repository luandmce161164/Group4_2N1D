/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ProductDAO;
import Models.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Date;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;


/**
 *
 * @author User
 */
@MultipartConfig
public class ProductController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductController at " + request.getContextPath() + "</h1>");
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
        if (path.endsWith("/Admin/Product")) {
            request.getRequestDispatcher("/table-data-product.jsp").forward(request, response);
        } else {
            if (path.endsWith("/Admin/Product/Add")) {
                request.getRequestDispatcher("/form-add-san-pham.jsp").forward(request, response);
            } else {
                if (path.startsWith("/Admin/Product/Edit/")) {
                    String[] s = path.split("/");

                    String id = s[s.length - 1];
                    ProductDAO dao = new ProductDAO();
                    Product pt = dao.getProduct(id);
                    if (pt == null) {
                        response.sendRedirect("/Admin/Product");
                    } else {
                        HttpSession session = request.getSession();
                        session.setAttribute("PT", pt);
                        request.getRequestDispatcher("/form-edit-san-pham.jsp").forward(request, response);
                    }
                } else {
                    if (path.startsWith("/Admin/Product/Delete/")) {
                        String[] s = path.split("/");

                        String id = s[s.length - 1];
                        ProductDAO dao = new ProductDAO();
                        dao.DeleteProduct(id);
                        response.sendRedirect("/Admin/Product");
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
        
        Part filePart = request.getPart("txtImage");
        String fileName = null;
        String submitImageFileName = filePart.getSubmittedFileName();
        
        if (submitImageFileName != "") {
            InputStream fileContent = filePart.getInputStream();

            //gen format HHmmssddMMyyyy and add to file name
            LocalDateTime currentTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HHmmssddMMyyyy");
            String formattedTime = currentTime.format(formatter);
            submitImageFileName = formattedTime + "_" + submitImageFileName;
            
            String filePath = getServletContext().getRealPath("/images/") + File.separator + submitImageFileName;
            Files.copy(fileContent, Paths.get(filePath));
            
            fileName = "images/" + submitImageFileName;
        }
        
        if (request.getParameter("btnInsert") != null) {            
            String pid = request.getParameter("txtProductID");
            String pname = request.getParameter("txtProductName");
            String quantity = request.getParameter("txtQuantity");
            String category = request.getParameter("txtCategory");
            String pprice = request.getParameter("txtProductPrice");
            String pdate = request.getParameter("txtDate");
            String size = request.getParameter("txtSize");
            String image = fileName;
            String description = request.getParameter("txtDescription");
            Product pt = new Product(pid, pname, Integer.parseInt(pprice), image, Integer.parseInt(category), Date.valueOf(pdate), 1, description, size, Integer.parseInt(quantity));
            ProductDAO dao = new ProductDAO();
            int count = dao.AddProduct(pt);
            if (count > 0) {
                response.sendRedirect("/Admin/Product");
            } else {
                response.sendRedirect("/Admin/Product/Add");
            }
        }
        if (request.getParameter("btnUpdate") != null) {
            String pid = request.getParameter("txtProductID");
            String pname = request.getParameter("txtProductName");
            String quantity = request.getParameter("txtQuantity");
            String category = request.getParameter("txtCategory");
            String pprice = request.getParameter("txtProductPrice");
            String status = request.getParameter("txtStatus");
            String pdate = request.getParameter("txtDate");
            String size = request.getParameter("txtSize");
            String image = fileName;
            String description = request.getParameter("txtDescription");
            Product pt = new Product(pid, pname, Integer.parseInt(pprice), image, Integer.parseInt(category), Date.valueOf(pdate), Integer.parseInt(status), description, size, Integer.parseInt(quantity));
            ProductDAO dao = new ProductDAO();
            dao.UpdateProduct(pt);
            response.sendRedirect("/Admin/Product/Edit/");
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
