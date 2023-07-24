<%--<%@ page language="java" pageEncoding="utf-8 %>--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>SD17313 - Thêm mới </title>
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
        <button>submit</button>
    </div>
</sf:form>
</body>
</html>