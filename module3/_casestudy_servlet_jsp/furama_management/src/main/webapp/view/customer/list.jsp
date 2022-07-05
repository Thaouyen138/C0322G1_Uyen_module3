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
    <title>f-Management</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/bootstrap/bootstrap413/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/bootstrap/datatables/css/dataTables.bootstrap4.min.css"/>
    <style>
        .center-box {
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
<div class="row bg-primary" style="height: 70px;">
    <div class="col-md-1 center-box">
        <a class="bi bi-house-heart btn bg-white font-weight-bold" style="font-size: 50px" href="/home">
        </a>
    </div>
    <div class="col-md-10 center-box ">
        <a href="/customer" class="text-white font-weight-bold" style="font-size: 40px ;text-decoration: none">
            ⒸⓊⓈⓉⓄⓂⒺⓇ &ensp; ⓁⒾⓈⓉ
        </a>
    </div>
    <div class="col-md-1 center-box">

        <span class="bi bi-search btn bg-white font-weight-bold"
              data-toggle="modal" data-target="#search" style="width:300px;float: right">
        </span>
    </div>

</div>
<div>
    <table class="table table-hover table-center container" id="table">
        <thead>
        <tr>
            <th class="border-0">No.</th>
            <th class="border-0">Id Customer</th>
            <th class="border-0">Customer Type</th>
            <th class="border-0">Name</th>
            <th class="border-0">Date of birth</th>
            <th class="border-0">Gender</th>
            <th class="border-0">Id card</th>
            <th class="border-0">Phone number</th>
            <th class="border-0">Email</th>
            <th class="border-0">Address</th>
            <th class="border-0 text-primary">𝔼𝕕𝕚𝕥</th>
            <th class="border-0 text-primary">𝔻𝕖𝕝𝕖𝕥𝕖</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${customerList}" var="c" varStatus="stt">
            <tr>
                <td>${stt.count}</td>
                <td>${c.id}</td>
                <c:forEach items="${customerTypeList}" var="t">
                    <c:if test="${t.id == c.customerTypeId}">
                        <td>${t.name}</td>
                    </c:if>
                </c:forEach>
                <td>${c.name}</td>
                <td>${c.dateOfBirth}</td>
                <td>${c.gender}</td>
                <td>${c.idCard}</td>
                <td>${c.phoneNumber}</td>
                <td>${c.email}</td>
                <td>${c.address}</td>
                <td>
                    <a href="/customer?action=edit&id=${c.id}" class="btn btn-primary"><i class="bi bi-pencil-square"></i></a>
                </td>
                <td>
                    <btn class="btn btn-primary" data-toggle="modal" data-target="#delete" onclick="getId(`${c.id}`)">
                        <i class="bi bi-trash"></i>
                    </btn>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div>
    <div class="center-box w-100">
        <a href="/customer?action=create" class="btn btn-primary font-weight-bold">
            𝔸𝕕𝕕 𝕟𝕖𝕨 𝕔𝕦𝕤𝕥𝕠𝕞𝕖𝕣 &ensp;
            <i class="bi bi-calendar2-plus font-weight-bold" style="font-size: 30px"></i>
<%--            <i class="ml-2 bi bi-plus-circle font-weight-bold"></i>--%>
        </a>
    </div>
</div>
<div>

</div>
<c:if test="${msg != null}">
    <h3 class="text-danger font-weight-bold conter-box w-100">${msg}</h3>
</c:if>

<div class="modal" id="delete">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title w-100 text-center" id="confirm"></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="deleteById()">
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
                    <form method="post" action="/customer?action=search"
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
            "pageLength": 6
        });
    })

    var idToDelete;
    function getId(id){
        idToDelete = id;
        document.getElementById("confirm").innerHTML = "Bạn có muốn xóa khách hàng <br>" + id;
    }
    function deleteById(){
        window.location.href = "/customer?action=delete&id=" + idToDelete;
    }
</script>
</html>

