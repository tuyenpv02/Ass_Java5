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

    <h1>quản lý sản phẩm</h1>

    <a href="/admin/chi-tiet-sp/create" class="btn btn-primary">add</a>
    <table class="table ">
        <thead class="table-primary">
        <tr>
            <th>stt</th>
            <th>tên</th>
            <th>nsx</th>
            <th>màu sắc</th>
            <th>dòng sản phẩm</th>
            <th>năm bh</th>
            <th>mô tả</th>
            <th>số lượng tồn</th>
            <th>giá nhập</th>
            <th>giá bán</th>
            <th colspan="2">action</th>
        </tr>
        </thead>
        <%int i = 0;%>
        <tbody>
        <c:forEach items="${lstChiTietSP}" var="ct">
            <tr>
                <td><%= ++i%> </td>
                <td>${ct.sanPham.ten}</td>
                <td>${ct.nsx.ten}</td>
                <td>${ct.mauSac.ten}</td>
                <td>${ct.dongSP.ten}</td>
                <td>${ct.namBH}</td>
                <td>${ct.moTa}</td>
                <td>${ct.soLuongTon}</td>
                <td>${ct.giaNhap}</td>
                <td>${ct.giaBan}</td>
                <td>
                    <a href="/admin/chi-tiet-sp/edit/${ct.id}" class="btn btn-primary">edit</a>
                    <a href="/admin/chi-tiet-sp/delete?id=${ct.id}" class="btn btn-primary">delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>

    </table>

</div>
</body>
</html>
