<%--<%@ page language="java" pageEncoding="utf-8 %>--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>SD17313 - Thêm mới Cửa hàng</title>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
</head>
<body>
<sf:form action="${action}" method="post"
         modelAttribute="data">
    <div>
        <label>mã</label>
        <div>
            <sf:input path="ma"/>
            <sf:errors path="ma" />
        </div>
    </div>
    <div>
        <label>tên </label>
        <div>
            <sf:input path="ten"/>
            <sf:errors path="ten"/>
        </div>
    </div>
    <div>
        <label>địa chỉ </label>
        <div>
            <sf:input path="diaChi"/>
            <sf:errors path="diaChi" />
        </div>
    </div>
    <div>
        <label>thành phố </label>
        <div>
            <sf:input path="thanhPho"/>
            <sf:errors path="thanhPho"/>
        </div>
    </div>
    <div>
        <label>quốc gia </label>
        <div>
            <sf:input path="quocGia"/>
            <sf:errors path="quocGia"/>
        </div>
    </div>
    <div>
        <button>submit</button>
    </div>
</sf:form>
</body>
</html>