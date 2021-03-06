<%--
  Created by IntelliJ IDEA.
  User: thaouyen
  Date: 30/06/2022
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>User-Management</title>
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style>
        .conter-box{
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body>
<div class="row bg-primary conter-box text-white ">
    <h3> Thêm mới khách hàng</h3>
</div>


<form action="/user?action=create" method="post" class="container">
    <div class="mb-3">
        <label class="form-label">Name User</label>
        <input type="text" class="form-control" name="name" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label class="form-label">Email</label>
        <input type="text" class="form-control" name="email">
    </div>
    <div class="mb-3">
        <label class="form-label">Country</label>
        <input type="text" class="form-control" name="country">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

</body>
<script src="/bootstrap/js/bootstrap.bundle.js"></script>
</html>
