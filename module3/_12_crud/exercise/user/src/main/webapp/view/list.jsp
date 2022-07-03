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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/bootstrap/bootstrap413/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/bootstrap/datatables/css/dataTables.bootstrap4.min.css"/>
    <style>
        .conter-box {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .space-around {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
    </style>
</head>
<body>
<%-- model --%>
<%--    <center><h1 style="color: #0f6674" >user list</h1></center>--%>
<div class="row bg-primary">
    <div class="col-md-4">&emsp;</div>
    <div class="col-md-4 conter-box ">
        <a href="/user" class="text-white " style="font-size: 25px ;text-decoration: none">User List</a>
    </div>
    <div class="col-md-4 conter-box">
        <span class="bi bi-search btn bg-white font-weight-bold"
              data-toggle="modal" data-target="#search">

        </span>
    </div>

</div>
<div class="container">
    <table class="table table-hover table-center container" id="table">
        <thead>
        <tr>
            <th class="border-0">No.</th>
            <th class="border-0">Name</th>
            <th class="border-0">Email</th>
            <th class="border-0">Country</th>
            <th class="border-0">Type</th>
            <th class="border-0">Delete</th>
            <th class="border-0">Edit</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${userLists}" var="u" varStatus="userStatus">
            <tr>
                <td>${userStatus.count}</td>
                <td>${u.name}</td>
                <td>${u.email}</td>
                <td>${u.country}</td>
                <c:forEach items="${typeUserLis}" var="type">
                    <c:if test="${type.id == u.typeId}">
                        <td>${type.type}</td>
                    </c:if>
                </c:forEach>
                <td>
                    <btn class="btn btn-primary" data-toggle="modal" data-target="#delete">
                        Delete
                    </btn>
                </td>
                <td>
                    <a href="/user?action=edit&id=${u.id}" class="btn btn-primary">Edit</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div>
    <div class="conter-box w-100">
        <a href="/user?action=create" class="btn btn-primary">
            Add new user
        </a>
    </div>
</div>
<div>

</div>
<c:if test="${msg != null}">
    <div class="text-success font-weight-bold conter-box">${msg}</div>
</c:if>

<div class="modal" id="delete">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title w-100 text-center">Bạn có muốn xóa nhân viên</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="employeeIndex2()">
                    <a class="text-white">Xóa</a>
                </button>
                <button type="button" class="btn btn-primary " data-dismiss="modal">Hủy</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="search">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header w-100">
                <div class="w-100 center-box">
                        <form method="post" action="/user?action=search"
                          class="form-inline my-2 my-lg-0 w-100 center-box">
                        <div class="p-1 bg-light rounded rounded-pill w-100 shadow-sm center-box">
                            <div class="input-group center-box w-100 space-around">
                                <input type="search" placeholder="Input name" aria-describedby="button-addon1"
                                       class="form-control border-0 bg-light w-25 p-0"
                                       name="name">
                                <input type="search" placeholder="Input country" aria-describedby="button-addon1"
                                       class="form-control border-0 bg-light w-25 p-0"
                                       name="country">
                                <div class="input-group-append w-25">
                                    <button id="button-addon1" type="submit" class="btn btn-link text-primary h-100 w-100 p-0">
                                        <i class="bi bi-search"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
        </div>
    </div>
</div>
</body>
<script src="/bootstrap/jquery/jquery-3.5.1.min.js"></script>
<script src="/bootstrap/datatables/js/jquery.dataTables.min.js"></script>
<script src="/bootstrap/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/bootstrap/bootstrap413/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).ready(function () {
        $('#table').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 4
        });
    })
</script>
</html>
