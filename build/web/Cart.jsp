<%-- 
    Document   : Cart
    Created on : Nov 15, 2020, 11:03:57 AM
    Author     : longd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>
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
        <title>Title</title>
    </head>

    <body>


        <!-- <%-- Header --%> -->
        <!-- <%-- ----------------------------------------------------------------------------------------------------------- --%> -->
        <nav class="navbar navbar-expand-sm sticky-top navbar-dark bg-dark">
            <div class="container">
                <img class="navbar-brand" src="assets/images/logo.png" alt="" href="MilkTea" >
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                        data-target="#navbar1">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbar1">
                    <ul class="navbar-nav">
                        <li class="nav-item active">
                            <a class="nav-link text-light text-uppercase font-weight-bold" href="MilkTea">Trang Ch???</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light text-uppercase font-weight-bold" href="product">Danh M???c S???n Ph???m</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light text-uppercase font-weight-bold" href="Intro.jsp">Gi???i Thi???u</a>
                        </li>
                        
                    </ul>
                    <ul class="navbar-nav ml-auto">
                         <li class="nav-item">
                             <a class="nav-link text-uppercase text-light" href="infor">${sessionScope.TK}</a>
                        </li>
                          <c:if test="${sessionScope.TK eq 'admin'}">
                            <li class="nav-item">
                            <a class="nav-link text-light text-uppercase font-weight-bold" href="admin">S???a</a>
                        </li>
                        </c:if>
                        <form action="MilkTea">
                            <c:choose>
                                <c:when test="${sessionScope.TK != null}">
                                    <li class="nav-item">
                                        <a class="nav-link text-light text-uppercase" href="logout">????ng Xu???t</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="nav-item">
                                        <a class="nav-link text-light text-uppercase" href="login">????ng Nh???p</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </form>
                        <li class="nav-item active">
                            <a class="nav-link text-light text-uppercase" href="Cart.jsp">Gi??? H??ng</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
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
                                                    <div class="p-2 px-3 text-uppercase">ID</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">S???n Ph???m</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">????n Gi??</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">S??? L?????ng</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">T???ng Ti???n</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase ">X??a</div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${sessionScope.cart}" var="d">
                                                <tr>

                                                    <td class="align-middle"><strong>${d.maSanPham}</strong></td>
                                                    <div class="p-1">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                 <td class="align-middle"><strong>${d.tenSanPham}</strong></td>
                                                            </div>
                                                        </div>
                                                  
                                                    <td class="align-middle"><strong>${d.gia}</strong></td>
                                                    <td class="align-middle">
                                                        <a href="sub?id=${d.maSanPham}"><button class="btnSub">-</button></a>
                                                        <strong >${d.soLuongSP}</strong>
                                                        <a href="addtocart?id=${d.maSanPham}"><button class="btnAdd">+</button></a>
                                                    </td>
                                                     <td class="align-middle">
                                                         <strong name="total">${d.total*d.soLuongSP}</strong></td>
                                                    <td class="align-middle">
                                                        <a href="remove?id=${d.maSanPham}"><button class="btnDelete">Delete</button></a>
                                                    </td>
                                                </tr> 
                                            </c:forEach>
                                        </tbody>
                                        
                                    </table>
                                      <a href="order" class="btn btn-dark rounded-pill py-2 btn-block">Mua h??ng</a>
                                </div>
                                <!-- End -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <!-- Site footer -->
       <footer class="site-footer">
            <div class="container ">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                        <h6>C??NG TY CP TM & DV TACO VI???T NAM</h6>
                        ?????a Ch???:<span>T???ng 2 t??a nh?? T10, Times City V??nh Tuy, Hai B?? Tr??ng, H?? N???i.</span>
                        <br>
                        Li??n H???:<span>1900.63.69.36</span>
                        <br>
                        <span>S??? ??KKD: 0106341306. Ng??y c???p: 16/03/2017.</span>
                        <br>
                        <span>N??i c???p: S??? k??? ho???ch v?? ?????u t?? Th??nh ph??? H?? N???i.</span>
                        <br>
                    </div>



                </div>
                <hr>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                            <p class="copyright-text">ToCoToCo - Th????ng hi???u tr?? s???a ti??n phong s??? d???ng ngu???n n??ng s???n Vi???t Nam


                            </p>
                        </div>

                    </div>
                </div>
        </footer>


        <!-- <%-- ----------------------------------------------------------------------------------------------------------- --%> -->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
                        </body>
                        </html>
