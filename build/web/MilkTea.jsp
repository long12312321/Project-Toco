<%-- 
    Document   : MilkTea
    Created on : Oct 21, 2020, 5:46:24 PM
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



        <!-- <%-- ----------------------------------------------------------------------------------------------------------- --%> -->



        <!-- <%-- carousel slide --%> -->
        <!-- <%-- ----------------------------------------------------------------------------------------------------------- --%> -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="bd-placeholder-img" width="100%" height="100%"
                         src="https://theme.hstatic.net/1000360860/1000486980/14/ms_banner_img1.jpg?v=2706"
                         preserveAspectRatio="xMidYMid slice" focusable="false" role="img">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>ToCoToCO Tea</h1>
                            <p>V???i s??? m???nh mang t???i ni???m vui v?? h???nh ph??c, TocoToco hy v???ng s??? t???o n??n m???t n??t v??n h??a gi???i tr?? b??n c???nh ly tr?? 
                                s???a Ngon ??? s???ch ??? t????i.
                            </p>
                            <p><a class="btn btn-lg btn-success" href="product" role="button">Xem Ngay</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="bd-placeholder-img" width="100%" height="100%"
                         src="https://theme.hstatic.net/1000360860/1000486980/14/ms_banner_img4.jpg?v=2706"
                         preserveAspectRatio="xMidYMid slice" focusable="false" role="img">
                    <div class="container">
                        <div class="carousel-caption text-left">
                            <p><a class="btn btn-lg btn-primary" href="product" role="button">Xem Ngay</a></p>
                        </div>
                    </div>
                </div>

            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <!--  ----------------------------------------------------------------------------------------------------------- -- -->


        <!-- <%-- product --%> -->
        <!-- <%-- ----------------------------------------------------------------------------------------------------------- --%> -->

        <h1 class="text-center mb-5">S???n Ph???m</h1> 
        <div class="container  ">
            <div class="row ">
                <c:forEach items = "${requestScope.listpg}" var="li">    
                    <div class="col-lg-4 col-sm-6 portfolio-item text-center  mb-5  ">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="assets/${li.imgUrl}" alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <span>${li.tenSanPham}(${li.size})</span>
                                </h4>
                                <p>${li.gia}VND</p>
                            </div>
                            <a href="addtocart?id=${li.maSanPham}"><input type="submit" class="btn btn-success m-4 "  value="Mua Ngay"></a>


                        </div>
                    </div>

                </c:forEach>

            </div>

            <nav id="app">
                <ul class="pagination pagination-lg justify-content-center">
                    <c:forEach begin="1" end ="${requestScope.numberPage}" var="i">  
                        <li class="page-item " v-bind:class="objClass">
                            <a class="page-link " href="MilkTea?index=${i}">${i}</a>
                        </li>
                    </c:forEach>

                </ul>
            </nav>
        
        </div>






        <!-- <%-- ----------------------------------------------------------------------------------------------------------- --%> -->


        <!-- <%-- footer --%> -->
        <!-- <%-- ----------------------------------------------------------------------------------------------------------- --%> -->


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