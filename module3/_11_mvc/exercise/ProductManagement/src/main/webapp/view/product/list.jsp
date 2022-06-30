<%--
  Created by IntelliJ IDEA.
  User: thaouyen
  Date: 29/06/2022
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<form action="" method="get">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">id</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Describle</th>
            <th scope="col">Producer</th>
        </tr>
        </thead>

        <c:forEach items="${product}" var="p">
            <tr>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td>${p.price}</td>
                <td>${p.describle}</td>
                <td>${p.producer}</td>
            </tr>
        </c:forEach>

    </table>
</form>

</body>
<script src="/bootstrap/js/bootstrap.bundle.js"></script>
</html>
