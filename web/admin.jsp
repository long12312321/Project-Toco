<%-- 
    Document   : admin
    Created on : Nov 15, 2020, 10:15:53 PM
    Author     : longd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
       
<style>
    body {
        color: #566787;
        background: #f5f5f5;
		font-family: 'Roboto', sans-serif;
	}
    .table-responsive {
        margin: 30px 0;
    }
	.table-wrapper {
		min-width: 1000px;
        background: #fff;
        padding: 20px;        
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-title {
        padding-bottom: 10px;
        margin: 0 0 10px;
    }
    .table-title h2 {
        margin: 8px 0 0;
        font-size: 22px;
    }
    .search-box {
        position: relative;        
        float: right;
    }
    .search-box input {
        height: 34px;
        border-radius: 20px;
        padding-left: 35px;
        border-color: #ddd;
        box-shadow: none;
    }
	.search-box input:focus {
		border-color: #3FBAE4;
	}
    .search-box i {
        color: #a0a5b1;
        position: absolute;
        font-size: 19px;
        top: 8px;
        left: 10px;
    }
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
	}
	table.table-striped.table-hover tbody tr:hover {
		background: #f5f5f5;
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }
    table.table td:last-child {
        width: 130px;
    }
    table.table td a {
        color: #a0a5b1;
        display: inline-block;
        margin: 0 5px;
    }
	table.table td a.view {
        color: #03A9F4;
    }
    table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #E34724;
    }
    table.table td i {
        font-size: 19px;
    }    
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 95%;
        width: 30px;
        height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 30px !important;
        text-align: center;
        padding: 0;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
	.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 6px;
        font-size: 95%;
    }   
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
<script>
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
});
</script>
</head>
<body>
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

   
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-8"><h2>San Pham</h2></div>
                       
                    </div>
                </div>
                <table class="table table-striped table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>Mã Danh Mục</th>
                            <th>Tên Sản Phẩm </th>
                            <th>Size</th>
                            <th>Img</th>
                            <th>Giá</th>
                            <th>Lựa Chọn</th>
                        </tr>
                    </thead>
                    <tbody>
                         <c:forEach items = "${requestScope.listsp}" var="lis"> 
                        <tr>
                            <td>${lis.maDanhMuc}</td>
                            <td>${lis.tenSanPham}
                               </td>
                               <td>${lis.size}
                                </td>
                                <td>
                                ${lis.imgUrl}
                                <img class="card-img-top" src="assets/${lis.imgUrl}" width="100px" height="400px"alt=""></td>
                                <td>${lis.gia}
                                </td>
                            <td>
                                <a href="insert.jsp" class="view" title="View" data-toggle="tooltip"><i class="material-icons ">&#xE417;</i></a>
                                <a href="update?id=${lis.maSanPham}" class="edit" title="Edit" data-toggle="tooltip" ><i class="material-icons">&#xE254;</i></a>
                                <a href="delete?id=${lis.maSanPham}" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                            </td>
                        </tr>
                         </c:forEach>
                    </tbody>
                </table>
                
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

        <!-- <%-- ----------------------------------------------------------------------------------------------------------- --%> -->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>