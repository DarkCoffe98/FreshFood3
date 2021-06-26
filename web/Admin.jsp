<%-- 
    Document   : Admin
    Created on : Jun 24, 2021, 10:56:42 AM
    Author     : Bi Pham
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Product Page - Admin HTML Template</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700" type="text/css">
    <link rel="stylesheet" href="css/fontawesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/templatemo-style.css" type="text/css">
    <style>
        img{
            width: 150px;
            height: 120px;
            }
    </style>
  </head>

  <body id="reportsPage">
    <nav class="navbar navbar-expand-xl">
      <div class="container h-100">
        <a class="navbar-brand" href="index.html">
          <h1 class="tm-site-title mb-0">Product Admin</h1>
        </a>
        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mx-auto h-100">
            <li class="nav-item">
              <a class="nav-link active" href="products.html">
                <i class="fas fa-shopping-cart"></i> Products
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="accounts.html">
                <i class="far fa-user"></i> Accounts
              </a>
            </li>
          </ul>
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link d-block" href="login.html">
                Admin, <b>Logout</b>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container mt-5">
      <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-products">
            <div class="tm-product-table-container">
              <table class="table table-hover tm-table-small tm-product-table">
                <thead>
                  <tr>
                    <th scope="col">&nbsp;</th>
                    <th scope="col">ID</th>
                    <th scope="col">PRODUCT NAME</th>
                    <th scope="col">IMAGE</th>
                    <th scope="col">PRICE</th>
                    <th scope="col">&nbsp;</th>
                  </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listP}" var="o">
                    <tr>
                        <th scope="row"><input type="checkbox"></th>
                        <td>${o.id}</td>
                        <td class="tm-product-name">${o.name}</td>
                        <td>
                            <img src="${o.image}">
                        </td>
                        <td>${o.price}$</td>
                        <td>
                          <a href="Delete?pid=${o.id}" class="tm-product-delete-link">
                            <i class="far fa-trash-alt tm-product-delete-icon"></i>
                          </a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
              </table>
            </div>
            <!-- table container -->
            <a href="#addEmployeeModal" data-toggle="modal" class="btn btn-primary btn-block text-uppercase mb-3">Add new product</a>
            <button class="btn btn-primary btn-block text-uppercase">
              Delete selected products
            </button>
          </div>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
            <h2 class="tm-block-title">Product Categories</h2>
            <div class="tm-product-table-container">
              <table class="table tm-table-small tm-product-table">
                <tbody>
                    <c:forEach items="${listC}" var="o">
                        <tr>
                            <td class="tm-product-name">${o.cname}</td>
                            <td class="text-center">
                            <a href="#" class="tm-product-delete-link">
                                <i class="far fa-trash-alt tm-product-delete-icon"></i>
                            </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
              </table>
            </div>
            <!-- table container -->
            <button class="btn btn-primary btn-block text-uppercase mb-3">
              Add new category
            </button>
          </div>
        </div>
      </div>
    </div>

      <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="AddControl" method="POST">
                        <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                        <div class="row">
                            <div class="col-12">
                              <h2 class="tm-block-title d-inline-block">Add Product</h2>
                            </div>
                        </div>
                        <div class="row tm-edit-product-row">
                            <div class="col-xl-6 col-lg-6 col-md-12">
                                <div class="form-group mb-3">
                                    <label>ID</label>
                                    <input name="id" type="text" class="form-control validate" required>
                                </div>
                                <div class="form-group mb-3">
                                    <label>Product Name</label>
                                    <input name="name" type="text" class="form-control validate" required>
                                </div>
                                <div class="form-group mb-3">
                                  <label>Image</label>
                                  <input name="image" type="text" class="form-control validate" required>
                                </div>
                                <div class="row">
                                    <div class="form-group mb-3 col-xs-12 col-sm-6">
                                        <label>Price</label>
                                        <input name="price" type="text" class="form-control validate" required>
                                    </div>
                                    <div class="form-group mb-3 col-xs-12 col-sm-6">
                                        <label>Title</label>
                                        <input name="title" type="text" class="form-control validate">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                <div class="form-group mb-3">
                                  <label>Description</label>
                                  <textarea name="description" class="form-control validate" rows="3"></textarea>
                                </div>
                                <div class="form-group mb-3">
                                  <label>Category</label>
                                  <select name="category" class="custom-select tm-select-accounts">
                                    <option selected="">Select category</option>
                                    <c:forEach items="${listC}" var="o">
                                        <option value="${o.cid}">${o.cname}</option>
                                    </c:forEach>
                                  </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <input type="submit" class="btn btn-primary btn-block text-uppercase" value="Add Product Now">
                            <input type="button" class="btn btn-primary btn-block text-uppercase" data-dismiss="modal" value="Cancel">
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
      $(function() {
        $(".tm-product-name").on("click", function() {
          window.location.href = "edit-product.html";
        });
      });
    </script>
  
</body>
</html>