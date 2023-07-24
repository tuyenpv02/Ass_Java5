<%@page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>sd17313</title>
    <link
            href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            rel="stylesheet" id="bootstrap-css">
    <script
            src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script
            src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div>

    <br>
    <a href="/admin/quan-ly" class="btn btn-success">Quản lý</a>
    <br>

    <h1>Cửa hàng</h1>

    <table class="table ">
        <thead class="table-primary">
        <tr>
            <th>stt</th>
            <th>ma</th>
            <th>ten</th>
            <th>diaChi</th>
            <th>thành phố</th>
            <th>quốc gia</th>
            <th>mat khau</th>
            <th>action</th>
        </tr>
        </thead>
        <%int i = 0;%>
        <tbody>
        <c:forEach items="${lstCuaHang}" var="ch">
            <tr>
                <td><%= ++i%> </td>
                <td>${ch.ma}</td>
                <td>${ch.ten}</td>
                <td>${ch.diaChi}</td>
                <td>${ch.thanhPho}</td>
                <td>${ch.quocGia}</td>
                <td>${kh.matKhau}</td>
                <td>
                    <a href="/admin/cua-hang/edit/${ch.id}" class="btn btn-primary">edit</a>
                    <a href="delete/${ch.id}" class="btn btn-primary">delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>

    </table>
    <a href="create" class="btn btn-primary">add</a>
</div>
</body>
</html>
