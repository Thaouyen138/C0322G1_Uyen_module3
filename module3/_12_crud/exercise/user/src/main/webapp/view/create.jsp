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
    <link href="/bootstrap/bootstrap413/css/bootstrap.min.css" rel="stylesheet" type="text/css">
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
    <h3> Add new user</h3>
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
    <div class="mb-3">
        <label class="form-label">Type User</label>
        <select name="type_id" class="form-control">
            <c:forEach items="${typeUserList}" var="type">
                <option value="${type.id}">
                    ${type.type}
                </option>
            </c:forEach>
        </select>
    </div>
    <button type="submit" class="btn btn-primary float-right">Submit</button>
    <a href="/user" class="btn btn-primary float-left" > Back Home</a>
</form>

</body>
<script src="/bootstrap/bootstrap413/js/bootstrap.bundle.js"></script>
</html>
