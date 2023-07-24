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
    <h1></h1>

<%--    <a href="create" class="btn btn-primary">add</a>--%>
    <table class="table ">
        <thead class="table-primary">
        <tr>
            <th>stt</th>
            <th>khách hàng</th>
            <th>nhân viên</th>
            <th>ma</th>
            <th>ngày tạo</th>
            <th>ngày thanh toán</th>
            <th>ngày ship</th>
            <th>ngày nhận</th>
            <th>tình trạng</th>
            <th>tên người nhận</th>
            <th>địa chỉ</th>
            <th>sdt</th>
            <th>action</th>
        </tr>
        </thead>
        <%int i = 0;%>
        <tbody>
        <c:forEach items="${lstHoaDon}" var="cv">
            <tr>
                <td><%= ++i%> </td>
                <td>${cv.khachHang.ten}</td>
                <td>${cv.nhanVien.ten}</td>
                <td>${cv.ma}</td>
                <td>${cv.ngayTao}</td>
                <td>${cv.ngayThanhToan}</td>
                <td>${cv.ngayShip}</td>
                <td>${cv.ngayNhan}</td>
                <td>${cv.tinhTrang}</td>
                <td>${cv.tenNguoiNhan}</td>
                <td>${cv.diaChi}</td>
                <td>${cv.sdt}</td>
                <td>

                    <a href="/admin/hoa-don/chonHD/${cv.id}" class="btn btn-primary">detail</a>
<%--                    <a href="edit/${cv.id}" class="btn btn-primary">edit</a>--%>
<%--                    <a href="delete?id=${cv.id}" class="btn btn-primary">delete</a>--%>
                </td>
            </tr>
        </c:forEach>
        </tbody>

    </table>

</div>
</body>
</html>
