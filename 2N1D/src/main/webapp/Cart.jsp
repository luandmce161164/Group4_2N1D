<%-- 
    Document   : Cart
    Created on : Feb 21, 2023, 11:17:46 AM
    Author     : DELL7250
--%>

<%@page import="com.models.Account"%>
<%@page import="com.dao.ProductDAO"%>
<%@page import="com.models.Product"%>
<%@page import="com.models.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
    </head>
    <body>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <div class="shopping-cart">
            <div class="px-4 px-lg-0">
                <div class="pb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
                                <!-- Shopping cart table -->
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">Product</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Price</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Size</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Quantity</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Delete</div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                      
<!--                                              //  Account account = (Account) session.getAttribute("acc");
                                                //List<Product> List = (ArrayList) session.getAttribute("list");
                                                //double total = (double) session.getAttribute("list");
                                                //List<Cart> List = new ArrayList<>();
                                                //Product product = new Product();
                                                //ProductDAO dao = new ProductDAO();
                                                //dao.addCart(list.getProduct_id(), account.getAccount_id());
                                                //List = dao.ListAllCart();
                                                //List.add(new Cart((List.size()+1),account.getAccount_id(),list.getProduct_id(),1));
//                                                 double total = 0;
//////                                                for (Cart c : List) {
//////                                                    if (c.getAccount_id() == account.getAccount_id()) {
//////                                                        product = dao.getProductCart(c.getProduct_id());
////                                                for (Product product : List) {
////                                                    total = total + product.getQuantity() * product.getProduct_price();
//                                                for (Product product : List) {
//                                                    total = total + product.getQuantity() * product.getProduct_price();-->
                                            <c:forEach items="${list}" var="o">
                                                <tr>
                                                    <th scope="row">
                                                        <div class="p-2">
                                                            <img src="${o.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.name}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                    </th>
                                                    <td class="align-middle"><strong>${o.product_price}</strong></td>
                                                    <td class="align-middle"><strong>${o.product_price}</strong></td>
                                                    <td class="align-middle">
                                                        <a href="sub?id=${o.product_id}"><button class="btnSub">-</button></a> <strong>${o.quantity}</strong>
                                                        <a href="cart?id=${o.product_id}"><button class="btnAdd">+</button></a>
                                                    </td>
                                                    <td class="align-middle"><a href="Cart/Delete/${o.product_id}" class="text-dark">
                                                            <button type="button" class="btn btn-danger">Delete</button>
                                                        </a>
                                                    </td>
                                                </tr>  
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- End -->
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Total money</div>
                                <div class="p-4">
                                    <ul class="list-unstyled mb-4">
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total amount</strong><strong>${total}</stronboldg></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total payment</strong>
                                            <h5 class="font-weight-">${total + 30000} VND</h5>
                                        </li>
                                    </ul><a href="Order.jsp" class="btn btn-dark rounded-pill py-2 btn-block">Buy</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
