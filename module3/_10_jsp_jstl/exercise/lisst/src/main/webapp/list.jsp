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
    </head>
    <body>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Tên</th>
            <th scope="col">Ngày sinh</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Ảnh</th>
        </tr>
    </table>
    <c:forEach items="${customerList}" var="c">
        <table class="table">
            <tbody>
            <tr>
                <td>${c.name}</td>
                <td>${c.birthday}</td>
                <td>${c.address}</td>
                <td>${c.img}</td>
            </tr>
            </tbody>
        </table>
    </c:forEach>
    </body>
    <script src="/bootstrap/js/bootstrap.bundle.js"></script>
    </html>
