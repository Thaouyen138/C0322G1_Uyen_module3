<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/6/2022
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">

</head>
<body>
<nav class="navbar navbar-expand-lg ">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Furama</a>
        <button><a>HOME</a></button>
        <button><a>Customer</a></button>
        <button><a>Service</a></button>
        <button><a>Contract</a></button>
        <button><a>Employee</a></button>
    </div>
</nav>
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://cf.bstatic.com/xdata/images/hotel/max1024x768/62371531.jpg?k=fb1828d64f739b526944dcb487699e4625ad8799986e0e4ef5c2c930dcf39b6c&o=&hp=1" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>First slide label</h5>
                <p>Some representative placeholder content for the first slide.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://cf.bstatic.com/xdata/images/hotel/max1024x768/62371531.jpg?k=fb1828d64f739b526944dcb487699e4625ad8799986e0e4ef5c2c930dcf39b6c&o=&hp=1" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Second slide label</h5>
                <p>Some representative placeholder content for the second slide.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://cf.bstatic.com/xdata/images/hotel/max1024x768/62371531.jpg?k=fb1828d64f739b526944dcb487699e4625ad8799986e0e4ef5c2c930dcf39b6c&o=&hp=1" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Third slide label</h5>
                <p>Some representative placeholder content for the third slide.</p>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<div class="card text-center">
    <div class="card-header">
        Furama management
    </div>
    <div class="card-body">
        <h5 class="card-title">Special title treatment</h5>
        <p class="card-text">furama.com.</p>
        <a href="#" class="btn btn-primary">Go home</a>
    </div>
    <div class="card-footer text-muted"> thanks
    </div>
</div>
</body>
<script src="/bootstrap/js/bootstrap.bundle.js"></script>
</html>
