<%-- 
    Document   : Intro
    Created on : Nov 15, 2020, 11:19:48 PM
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
                            <a class="nav-link text-light text-uppercase font-weight-bold" href="MilkTea">Trang Chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light text-uppercase font-weight-bold" href="product">Danh Mục Sản Phẩm</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light text-uppercase font-weight-bold" href="Intro.jsp">Giới Thiệu</a>
                        </li>
                        
                    </ul>
                    <ul class="navbar-nav ml-auto">
                       <li class="nav-item">
                            <a class="nav-link text-uppercase text-light"href="infor">${sessionScope.TK}</a>
                        </li>
                          <c:if test="${sessionScope.TK eq 'admin'}">
                            <li class="nav-item">
                            <a class="nav-link text-light text-uppercase font-weight-bold" href="admin">Sửa</a>
                        </li>
                        </c:if>
                        <form action="MilkTea">
                            <c:choose>
                                <c:when test="${sessionScope.TK != null}">
                                    <li class="nav-item">
                                        <a class="nav-link text-light text-uppercase" href="logout">Đăng Xuất</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="nav-item">
                                        <a class="nav-link text-light text-uppercase" href="login">Đăng Nhập</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </form>
                        <li class="nav-item active">
                            <a class="nav-link text-light text-uppercase" href="Cart.jsp">Giỏ Hàng</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="grid__item large--one-whole ">

            <h1>Giới thiệu</h1>
            <div class="rte">
                <p>Luôn tâm huyết với việc khai thác nguồn nông sản Việt Nam để tạo ra những ly thức uống tươi ngon, 
                    an toàn và giàu giá trị dinh dưỡng, ToCoToCo mở cửa hàng đầu tiên vào năm 2013, 
                    mang trong mình lòng đam mê và khát vọng xây dựng một thương hiệu trà sữa thuần Việt,
                    mang đậm hương vị quê hương.ToCoToCo tin rằng thưởng thức một ly trà sữa được pha chế từ trà Mộc Châu, 
                    trân châu từ sắn dây Nghệ An hay mứt dâu tằm từ Đà Lạt sẽ là những trải nghiệm hoàn toàn khác biệt và 
                    tuyệt vời nhất cho những khách hàng của mình.</p><p>Cũng chính từ sự khác biệt đó, thương hiệu ToCoToCo
                    đã có những bước phát triển thần tốc và dần chiếm lĩnh thị trường trà sữa với hơn 200 cửa hàng trải dài
                    trên toàn quốc. Cột mốc năm 2018 đánh dấu ước mơ vươn xa biển lớn của thương hiệu khi ToCoToCo chính thức 
                    đặt chân lên nước Mỹ và tiếp nối thành công tại Úc, Nhật Bản, Hàn Quốc, Singapore,…</p><p>Hành trình đầy
                    đam mê và tâm huyết này sẽ tiếp tục nhân rộng để lan tỏa những ly trà thuần khiết nông sản Việt đến mọi 
                    miền trên Việt Nam và thế giới.<br></p>
                <p><img src="https://file.hstatic.net/1000360860/file/1._hinh_gioi_thieu_lich_su_su_menh_11ee7c00a7bd4f378fe05d20d02b8fb7_grande.jpg"
                        data-mce-src="https://file.hstatic.net/1000360860/file/1._hinh_gioi_thieu_lich_su_su_menh_11ee7c00a7bd4f378fe05d20d02b8fb7_grande.jpg" style="display: block; margin-left: auto; margin-right: auto;
                        " data-mce-style="display: block; margin-left: auto; margin-right: auto;"></p><p><img src="https://file.hstatic.net/1000360860/file/2._hinh_gioi_thieu_lich_su_su_menh_1_9f6818ac6c214a979972c671cb7ee511_grande.jpg" data-mce-src="https://file.hstatic.net/1000360860/file/2._hinh_gioi_thieu_lich_su_su_menh_1_9f6818ac6c214a979972c671cb7ee511_grande.jpg" style="display: block; margin-left: auto; margin-right: auto;" 
                                                                                                      data-mce-style="display: block; margin-left: auto; margin-right: auto;"></p>
            </div>

        </div>
        <footer class="site-footer">
            <div class="container ">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                        <h6>CÔNG TY CP TM & DV TACO VIỆT NAM</h6>
                        Địa Chỉ:<span>Tầng 2 tòa nhà T10, Times City Vĩnh Tuy, Hai Bà Trưng, Hà Nội.</span>
                        <br>
                        Liên Hệ:<span>1900.63.69.36</span>
                        <br>
                        <span>Số ĐKKD: 0106341306. Ngày cấp: 16/03/2017.</span>
                        <br>
                        <span>Nơi cấp: Sở kế hoạch và Đầu tư Thành phố Hà Nội.</span>
                        <br>
                    </div>



                </div>
                <hr>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                            <p class="copyright-text">ToCoToCo - Thương hiệu trà sữa tiên phong sử dụng nguồn nông sản Việt Nam


                            </p>
                        </div>

                    </div>
                </div>
        </footer>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

