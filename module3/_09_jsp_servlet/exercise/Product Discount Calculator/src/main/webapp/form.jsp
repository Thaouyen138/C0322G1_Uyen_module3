<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/6/2022
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<form action="/result" method="post">
    <h1>Product Discount </h1>
    <div class="form-floating mb-3">
        <label>Description</label>
        <input type="text" class="form-control" name="description" placeholder="mô tả sản phẩm">
    </div>
    <div class="form-floating mb-3">
        <label>Price</label>
        <input type="text" class="form-control" name="price" placeholder="giá niêm yết">
    </div>
    <div class="form-floating mb-3">
        <label>Discount percent</label>
        <input type="text" class="form-control" name="percent" placeholder="tỷ lệ chiết khấu">
    </div>
    <button type="submit" class="btn btn-danger"> submit</button>
</form>
</body>
<script src="/bootstrap/js/bootstrap.bundle.js"></script>
</html>
