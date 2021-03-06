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
                            <a class="nav-link text-uppercase text-light"href="infor">${sessionScope.TK}</a>
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

        <div class="grid__item large--one-whole ">

            <h1>Gi???i thi???u</h1>
            <div class="rte">
                <p>Lu??n t??m huy???t v???i vi???c khai th??c ngu???n n??ng s???n Vi???t Nam ????? t???o ra nh???ng ly th???c u???ng t????i ngon, 
                    an to??n v?? gi??u gi?? tr??? dinh d?????ng, ToCoToCo m??? c???a h??ng ?????u ti??n v??o n??m 2013, 
                    mang trong m??nh l??ng ??am m?? v?? kh??t v???ng x??y d???ng m???t th????ng hi???u tr?? s???a thu???n Vi???t,
                    mang ?????m h????ng v??? qu?? h????ng.ToCoToCo tin r???ng th?????ng th???c m???t ly tr?? s???a ???????c pha ch??? t??? tr?? M???c Ch??u, 
                    tr??n ch??u t??? s???n d??y Ngh??? An hay m???t d??u t???m t??? ???? L???t s??? l?? nh???ng tr???i nghi???m ho??n to??n kh??c bi???t v?? 
                    tuy???t v???i nh???t cho nh???ng kh??ch h??ng c???a m??nh.</p><p>C??ng ch??nh t??? s??? kh??c bi???t ????, th????ng hi???u ToCoToCo
                    ???? c?? nh???ng b?????c ph??t tri???n th???n t???c v?? d???n chi???m l??nh th??? tr?????ng tr?? s???a v???i h??n 200 c???a h??ng tr???i d??i
                    tr??n to??n qu???c. C???t m???c n??m 2018 ????nh d???u ?????c m?? v????n xa bi???n l???n c???a th????ng hi???u khi ToCoToCo ch??nh th???c 
                    ?????t ch??n l??n n?????c M??? v?? ti???p n???i th??nh c??ng t???i ??c, Nh???t B???n, H??n Qu???c, Singapore,???</p><p>H??nh tr??nh ?????y
                    ??am m?? v?? t??m huy???t n??y s??? ti???p t???c nh??n r???ng ????? lan t???a nh???ng ly tr?? thu???n khi???t n??ng s???n Vi???t ?????n m???i 
                    mi???n tr??n Vi???t Nam v?? th??? gi???i.<br></p>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

