<%@page language="java" pageEncoding="utf-8" %>

<html>
<head>

    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<h1>${action} -2 </h1>

<sf:form action="${action}" modelAttribute="data" method="post">
    <div class="row m-auto">
        <div class="col-5 ">
            <div>
                <label>mã</label>
                <div>
                    <sf:input path="ma"/>
                    <sf:errors path="ma"/>
                </div>
            </div>
            <div>
                <label>tên</label>
                <div>
                    <sf:input path="ten"/>
                    <sf:errors path="ten"/>
                </div>
            </div>
            <div>
                <label>tên đệm </label>
                <div>
                    <sf:input path="tenDem"/>
                    <sf:errors path="tenDem"/>
                </div>
            </div>
            <div>
                <label>họ </label>
                <div>
                    <sf:input path="ho"/>
                    <sf:errors path="ho"/>
                </div>
            </div>
            <div>
                <label>giới tính</label>
                <div>
                    <sf:input path="gioiTinh"/>
                    <sf:errors path="gioiTinh"/>
                </div>
            </div>
            <div>
                <label>ngày sinh</label>
                <div>
                    <sf:input  path="ngaySinh"/>
                    <sf:errors path="ngaySinh"/>
                </div>
            </div>
        </div>
        <div class="col-5">
            <div>
                <label>địa chỉ </label>
                <div>
                    <sf:input path="diaChi"/>
                    <sf:errors path="diaChi"/>
                </div>
            </div>
            <div>
                <label>sdt </label>
                <div>
                    <sf:input path="sdt"/>
                    <sf:errors path="sdt"/>
                </div>
            </div>
            <div>
                <label>cửa hàng </label>
                <div>
                    <select name="cuaHang">
                        <c:forEach items="${lstCuaHang}" var="ch">
                            <option value="${ch.id}">${ch.ten}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div>
                <label>chức vụ</label>
                <div>
                    <select name="chucVu">
                        <c:forEach items="${lstChucVu}" var="cv">
                            <option value="${cv.id}">${cv.ten}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div>
                <label>mật khẩu </label>
                <div>
                    <sf:input path="matKhau"/>
                    <sf:errors path="matKhau"/>
                </div>
            </div>
            <div>
                <label>trạng thái  </label>
                <div>
                    <sf:input path="trangThai"/>
                    <sf:errors path="trangThai"/>

                </div>
            </div>
        </div>
    </div>
    <div>
        <button type="submit">submit</button>
    </div>
</sf:form>
</body>