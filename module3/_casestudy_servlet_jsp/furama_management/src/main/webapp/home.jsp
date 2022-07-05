<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/6/2022
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <link href="/bootstrap/bootstrap413/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style>
        .menu-button:hover {
        /;background-color: #b8daff;
        }

        .center-box {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .menu{padding: 0}
    </style>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="collapse navbar-collapse center-box row" id="navbarSupportedContent">
        <div class="col-md-5">
        <ul class="navbar-nav mr-auto" >
            <li>
                <img style="width: 80px;height: 50px" src="https://www.datedluxuryweddings.com/wp-content/uploads/2021/06/Furama.png">
            </li>
            <li class="nav-item active menu-button center-box pr-4 pl-4">
                <a class="nav-link center-box " href="/home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active menu-button center-box pr-4 pl-4">
                <a class="nav-link active center-box" href="/customer">Customer</a>
            </li>
            <li class="nav-item active menu-button center-box pr-4 pl-4">
                <a class="nav-link center-box" href="/">Facility</a>
            </li>
            <li class="nav-item active menu-button center-box pr-4 pl-4">
                <a class="nav-link  center-box" href="/">Service</a>
            </li>
            <li class="nav-item active menu-button center-box pr-4 pl-4">
                <a class="nav-link center-box " href="/">Employee</a>
            </li>
        </ul>
        </div>
        <div class="col-md-4"> &nbsp;</div>
        <div class="col-md-3" style=" float: right">
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline my-2 my-sm-0" type="submit" >
                <i class="bi bi-search" ></i>
            </button>
        </form>
        </div>
    </div>
</nav>
<div class="container-fluid menu">
    <img style="width: 100%;height:1000px" src="https://cf.bstatic.com/xdata/images/hotel/max1024x768/62371531.jpg?k=fb1828d64f739b526944dcb487699e4625ad8799986e0e4ef5c2c930dcf39b6c&o=&hp=1">
</div>

</body>
<script src="/bootstrap/bootstrap413/js/bootstrap.bundle.js"></script>
</html>