<%-- 
    Document   : Pay
    Created on : Mar 1, 2023, 7:24:53 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Jekyll v3.8.5">
  <title>Checkout</title>
  <!-- Bootstrap core CSS -->
  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
  </style>
  <!-- Custom styles -->
  <link href="form-validation.css" rel="stylesheet">
</head>

<body class="bg-light">
  <div class="container">
    <div class="py-5 text-center"></div>
    <div class="row">
      <div class="col-md-4 order-md-2 mb-4">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-muted">Your cart</span>
          <span class="badge badge-secondary badge-pill">3</span>
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-condensed">
            <div>
              <h6 class="my-0">tên sản phẩm 1</h6>
              <small class="text-muted">áo 1</small>
            </div>
            <span class="text-muted">120.000 VND</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-condensed">
            <div>
              <h6 class="my-0">tên sản phẩm 2</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">9000000</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-condensed">
            <div>
              <h6 class="my-0">tên sản phẩm 3</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">5000000</span>
          </li>

          <li class="list-group-item d-flex justify-content-between">
            <span>Total (VND)</span>
            <strong>999999999999</strong>
          </li>
        </ul>
      </div>
      <div class="col-md-8 order-md-1">
        <h4 class="mb-3">Payment</h4>
        <form class="needs-validation" novalidate>
          <div class="mb-3">
            <label for="numberphone">Fullname</label>
            <div class="input-group">
              <input type="text" class="form-control" id="fullname" placeholder="Enter fullname" required>
              <div class="invalid-feedback" style="width: 100%;">
                Your fullname is required.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="numberphone">Number Phone</label>
            <div class="input-group">

              <input type="text" class="form-control" id="numberphone" placeholder="Enter number phone" required>
              <div class="invalid-feedback" style="width: 100%;">
                Your number phone is required.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="address">Address</label>
            <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
            <div class="invalid-feedback">
              Please enter your shipping address.
            </div>
          </div>
            <div class="mb-3">
            <label for="address">Note</label>
            <input type="text" class="form-control" id="address" placeholder="note">
            <div class="invalid-feedback">
              nhap ghi chu di!!
            </div>
          </div>

          <hr class="mb-4">
          <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>
        </form>
      </div>
    </div>
</body>

</html>