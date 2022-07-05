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
    <title>Customer-Management</title>
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
    <h3> Edit customer</h3>
</div>


<form action="/customer?action=edit" method="post" class="container">
        <input type="text" hidden class="form-control"  name="id" value="${customer.id}">
    <div class="mb-3">
        <label class="form-label">Customer type</label>
        <select name="customerTypeId" class="form-control">
            <c:forEach items="${customerTypeList}" var="type">
                <option value="${type.id}">
                        ${type.name}
                </option>
            </c:forEach>
        </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Name</label>
        <input type="text" class="form-control" name="name" value="${customer.name}" >
    </div>
    <div class="mb-3">
        <label class="form-label">Date of birth</label>
        <input type="date" class="form-control" name="dateOfBirth" value="${customer.dateOfBirth}" >
    </div>
    <div class="mb-3">
        <label class="form-label">gender</label>
        <input type="text" class="form-control" name="gender"  value="${customer.gender}" >
    </div>
    <div class="mb-3">
        <label class="form-label">Indentity </label>
        <input type="text" class="form-control" name="idCard"  value="${customer.idCard}" >
    </div>
    <div class="mb-3">
        <label class="form-label">Phone</label>
        <input type="text" class="form-control" name="phone"  value="${customer.phoneNumber}"  >
    </div>
    <div class="mb-3">
        <label class="form-label">Email</label>
        <input type="text" class="form-control" name="email"  value="${customer.email}" >
    </div>
    <div class="mb-3">
        <label class="form-label">Address</label>
        <input type="text" class="form-control" name="address"  value="${customer.address}" >
    </div>

    <button type="submit" class="btn btn-primary float-right">Submit</button>
    <a href="/home" class="btn btn-primary float-left" > Back Home</a>
</form>

</body>
<script src="/bootstrap/bootstrap413/js/bootstrap.bundle.js"></script>
</html>
