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
<%-- model --%>
<%--    <center><h1 style="color: #0f6674" >user list</h1></center>--%>
<div class="row bg-success">
    <div class="col-md-4">&emsp; </div>
    <div class="col-md-4 conter-box ">
        <a href="/user" class="text-white "  style="font-size: 25px ;text-decoration: none">User List</a>
    </div>
<div class="col-md-4 conter-box">
 <div>
     <form action="/user" class="conter-box">
         <input type="text" name="nameSearch">
         <input type="submit" name="action" value="search">
     </form>
 </div>
</div>

</div>
    <table class="table container">
        <thead>
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Delete</th>
        </tr>
        </thead>

        <c:forEach items="${userLists}" var="u">
            <c:if test="${u.statusDelete == 0}">
            <tr>
                <td>${u.id}</td>
                <td>${u.name}</td>
                <td>${u.email}</td>
                <td>${u.country}</td>
                <td>
                    <a href="/user?action=delete&id=${u.id}" class="btn btn-success">Delete</a>
                </td>
            </tr>
            </c:if>
        </c:forEach>

    </table>
    <div>
        <div class="conter-box w-100">
            <a href="/user?action=create" class="btn btn-success">
                Add new user
            </a>
        </div>
    </div>
    <c:if test="${msg != null}">
        <div class="text-success font-weight-bold conter-box">${msg}</div>
    </c:if>
</body>
<script src="/bootstrap/js/bootstrap.bundle.js"></script>
</html>
