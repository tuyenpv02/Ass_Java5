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
<div class="justify-content-center">

    <div class="row col-12 justify-content-center">
        <h1 class="">quản lý</h1>
    </div>
    <br>
    <div class="container">

        <div class="row">
            <div class="col">
                <a type="button" href="/admin/chuc-vu/index" class="btn btn-secondary">chức vụ</a>
                <a type="button" href="/admin/cua-hang/index" class="btn btn-secondary">cửa hàng</a>
                <a type="button" href="/admin/dong-san-pham/index" class="btn btn-secondary">dòng sp</a>

            </div>
            <div class="col">
                <a type="button" href="/admin/san-pham/index" class="btn btn-secondary">sản phẩm</a>
                <a type="button" href="/admin/mau-sac/index" class="btn btn-secondary">màu sắc</a>
                <a type="button" href="/admin/nha-san-xuat/index" class="btn btn-secondary">nhà sản xuất</a>
            </div>
            <div class="col">
                <a type="button" href="/admin/chi-tiet-sp/index" class="btn btn-secondary">chi tiết sp</a>
                <a type="button" href="/admin/nhan-vien/index" class="btn btn-secondary">nhân viên</a>
                <%--                <a type="button" href="/admin/khach-hang/index" class="btn btn-secondary">khách hàng</a>--%>
                <a type="button" href="/admin/hoa-don/index" class="btn btn-secondary">Hóa đơn</a>

            </div>
        </div>
    </div>

    <div class="btn-group" role="group" aria-label="Basic example">

        <a type="button" href="/admin" class="btn btn-secondary">Home</a>
    </div>

</div>
</body>
</html>
