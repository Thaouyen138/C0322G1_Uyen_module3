<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/6/2022
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style>
        img{
            height: 50px;
            width: 50px;
        }
    </style>
</head>
<body>
<table class="table">
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach items="${customerList}" var="c">
        <tr>
            <td>${c.name}</td>
            <td>${c.birthday}</td>
            <td>${c.address}</td>
            <td><img src="${c.img}"></td>
        </tr>
    </c:forEach>
</table>
</body>
<script src="/bootstrap/js/bootstrap.bundle.js"></script>
</html>
