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
    <h1>háo đơn chi tiết</h1>

    <a href="create" class="btn btn-primary">add</a>
    <table class="table ">
        <thead class="table-primary">
        <tr>
            <th>stt</th>
            <th>sp</th>
            <th>hd</th>
            <th>so luong</th>
            <th>don gia</th>
            <th>action</th>
        </tr>
        </thead>
        <%int i = 0;%>
        <tbody>
        <c:forEach items="${lstHoaDonCT}" var="cv">
            <tr>
                <td><%= ++i%> </td>
                <td>${cv.hoaDon.ma}</td>
                <td>${cv.chiTietSP.moTa}</td>
                <td>${cv.soLuong}</td>
                <td>${cv.donGia}</td>
                <td>
                    <a href="edit/${cv.id}" class="btn btn-primary">edit</a>
                    <a href="delete?id=${cv.id}" class="btn btn-primary">delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>

    </table>

</div>
</body>
</html>
