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

    <br>
    <a href="/admin/quan-ly" class="btn btn-success">Quản lý</a>
    <br>
<div class="container-fuild ">
    <h1>Nhan Vien xs</h1>

    <table class="table ">
        <thead class="table-primary">
        <tr>
            <th>stt</th>
            <th>ma</th>
            <th>ten</th>
            <th>tenDem</th>
            <th>ho</th>
            <th>gioiTinh</th>
            <th>ngaySinh</th>
            <th>diaChi</th>
            <th>sdt</th>
            <th>cửa hàng</th>
            <th>chức vụ</th>
            <th>mat khau</th>
            <th>trang thai</th>
            <th colspan="2">action</th>
        </tr>
        </thead>
        <%int i = 1;%>
        <tbody>
        <c:forEach items="${lstNhanVien}" var="nv">
            <tr>

                <td><%= i++%> </td>
                <td>${nv.ma}</td>
                <td>${nv.ten}</td>
                <td>${nv.tenDem}</td>
                <td>${nv.ho}</td>
                <td>${nv.gioiTinh}</td>
                <td>${nv.ngaySinh}</td>
                <td>${nv.diaChi}</td>
                <td>${nv.sdt}</td>
                <td>${nv.cuaHang.ten}</td>
                <td>${nv.chucVu.ten}</td>
                <td>${nv.matKhau}</td>
                <td>
                        ${nv.trangThai}
                </td>
                <td>
                    <a href="/admin/nhan-vien/edit/${nv.id}" class="btn btn-primary">edit</a>
                </td> <td>
                    <a href="/admin/nhan-vien/delete?id=${nv.id}" class="btn btn-primary">delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>

    </table>
    <a href="/admin/nhan-vien/create" class="btn btn-primary">Thêm mới</a>
</div>
</body>
</html>
