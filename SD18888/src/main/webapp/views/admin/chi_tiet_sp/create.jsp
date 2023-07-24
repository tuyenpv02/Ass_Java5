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
                <label>sản phẩm </label>
                <div>
                    <select name="sanPham">
                        <c:forEach items="${lstSanPham}" var="sp">
                            <option ${data.sanPham.id.equals(sp.id)?"selected":""} value="${sp.id}">${sp.ten}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div>
                <label>nhà sản xuất </label>
                <div>
                    <select name="nsx">
                        <c:forEach items="${lstNSX}" var="sx">
                            <option ${data.nsx.id.equals(sx.id)?"selected":""} value="${sx.id}">${sx.ten}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div>
                <label>màu sắc </label>
                <div>
                    <select name="mauSac">
                        <c:forEach items="${lstMauSac}" var="ms">
                            <option ${data.mauSac.id.equals(ms.id)?"selected":""} value="${ms.id}">${ms.ten}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div>
                <label>dòng sản phâm </label>
                <div>
                    <select name="dongSP">
                        <c:forEach items="${lstDongSP}" var="dsp">
                            <option ${data.dongSP.id.equals(dsp.id)?"selected":""} value="${dsp.id}">${dsp.ten}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div>
                <label>năm bảo hành</label>
                <div>
                    <sf:input  path="namBH" />
                    <sf:errors path="namBH"/>
                </div>
            </div>
        </div>
        <div class="col-5">
            <div>
                <label>mô tả </label>
                <div>
                    <sf:input path="moTa"/>
                    <sf:errors path="moTa"/>
                </div>
            </div>
            <div>
                <label>số lượng tồn </label>
                <div>
                    <sf:input path="soLuongTon"/>
                    <sf:errors path="soLuongTon"/>
                </div>
            </div>
            <div>
                <label>giá nhập</label>
                    <div>
                        <sf:input path="giaNhap"/>
                        <sf:errors path="giaNhap"/>
                    </div>
            </div>
            <div>
                <label>giá bán </label>
                <div>
                    <sf:input path="giaBan"/>
                    <sf:errors path="giaBan"/>
                </div>
            </div>
        </div>
    </div>
    <div>
        <button type="submit">submit</button>
    </div>
</sf:form>
</body>