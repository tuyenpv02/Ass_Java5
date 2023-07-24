<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/manager.css" rel="stylesheet" type="text/css"/>
    <style>
        img {
            width: 200px;
            height: 120px;
        }
    </style>
<body class="m-3">

<!--begin of menu-->
<%--<jsp:include page="header.jsp"></jsp:include>--%>
<div class="">
    <a href="/admin" class="btn btn-success">
        <span>Back Home</span></a>
    <%--                    <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>--%>
</div>

<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Manage <b>Product</b></h2>
                </div>
                <div class="col-sm-6">
                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i>
                        <span>Add New Product</span></a>
                    <%--                    <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>--%>
                </div>
            </div>
        </div>
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <%--                <th>--%>
                <%--                                <span class="custom-checkbox">--%>
                <%--                                    <input type="checkbox" id="selectAll">--%>
                <%--                                    <label for="selectAll"></label>--%>
                <%--                                </span>--%>
                <%--                </th>--%>
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
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <%int i = 0;%>
<%--            <c:forEach var="ct" items="${listProduct}" >--%>
            <c:forEach items="${listProduct.content}" var="ct" >
            <tr>
                        <%--                    <td>--%>
                        <%--                                    <span class="custom-checkbox">--%>
                        <%--                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">--%>
                        <%--                                        <label for="checkbox1"></label>--%>
                        <%--                                    </span>--%>
                        <%--                    </td>--%>
                    <td><%= ++i%>
                    </td>
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
                        <a href="/admin/quan-ly-san-pham/edit/${ct.id }" class="edit" data-toggle="modal"><i
                                class="material-icons"
                                data-toggle="tooltip"
                                title="Edit">&#xE254;</i></a>
<%--                        <a href="/admin/quan-ly-san-pham/delete/${ct.id }" class="delete" data-toggle="modal"><i--%>
<%--                                class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>--%>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="clearfix">
            <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
            <ul class="pagination">
                <%-- &lt;%&ndash;                <li class="page-item disabled"><a href="#">Previous</a></li>--%>
                <c:forEach begin="0" end="${listProduct.totalPages -1}" varStatus="loop">
                    <li class="page-item">
                        <a class="page-link"
                           href="/admin/quan-ly-san-pham?page=${loop.begin + loop.count -1 }">
                                ${loop.begin + loop.count}
                        </a>
                    </li>
                </c:forEach>
                <%--                <li class="page-item"><a href="#" class="page-link">1</a></li>--%>
                <%--                <li class="page-item"><a href="#" class="page-link">2</a></li>--%>
                <%--                <li class="page-item active"><a href="#" class="page-link">3</a></li>--%>
                <%--                <li class="page-item"><a href="#" class="page-link">4</a></li>--%>
                <%--                <li class="page-item"><a href="#" class="page-link">5</a></li>--%>
                <%--                <li class="page-item"><a href="#" class="page-link">Next</a></li>--%>
            </ul>
        </div>
    </div>
</div>
<!-- Edit Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/admin/quan-ly-san-pham/add" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Add Product</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>năm bảo hành</label>
                        <input name="namBH" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>số lượng tồn</label>
                        <input name="soLuongTon" type="number" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>giá nhập</label>
                        <input name="giaNhap" type="number" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>giá bán</label>
                        <input name="giaBan" type="number" class="form-control" required></input>
                    </div>
                    <div class="form-group">
                        <label>mô tả</label>
                        <textarea name="moTa" class="form-control" required></textarea>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-2">
                            <label> sản phẩm</label>
                            <select name="sanPham" class="form-select" aria-label="Default select example">
                                <c:forEach items="${lstSanPham}" var="sp">
                                    <option ${data.sanPham.id.equals(sp.id)?"selected":""}
                                            value="${sp.id}">${sp.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-2">
                            <label>nhà sản xuất</label>
                            <select name="nsx" class="form-select" aria-label="Default select example">
                                <c:forEach items="${lstNSX}" var="sx">
                                    <option ${data.nsx.id.equals(sx.id)?"selected":""}
                                            value="${sx.id}">${sx.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <%--                        <div class="form-group col-2">--%>
                        <%--                            <label>màu sắc</label>--%>
                        <%--                            <select name="nauSac" class="form-select" aria-label="Default select example">--%>
                        <%--                                <c:forEach items="${lstMauSac}" var="ms">--%>
                        <%--                                    <option ${data.mauSac.id.equals(ms.id)?"selected":""}--%>
                        <%--                                            value="${ms.id}">${ms.ten}</option>--%>
                        <%--                                </c:forEach>--%>
                        <%--                            </select>--%>
                        <%--                        </div>--%>
                        <div class="form-group col-2">
                            <label>màu </label>
                            <select name="mauSac" class="form-select" aria-label="Default select example">
                                <c:forEach items="${lstMauSac}" var="ms">
                                    <option value="${ms.id}">${ms.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-2">
                            <label>dòng sản phẩm</label>
                            <select name="dongSP" class="form-select" aria-label="Default select example">
                                <c:forEach items="${lstDongSP}" var="dsp">
                                    <option ${data.dongSP.id.equals(dsp.id)?"selected":""}
                                            value="${dsp.id}">${dsp.ten}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <%--                    <div class="form-group">--%>
                    <%--                        <label>Category</label>--%>
                    <%--                        <select name="category" class="form-select" aria-label="Default select example">--%>

                    <%--&lt;%&ndash;                            <c:forEach items="${listCategory }" var="ct">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                <option value="${ct.cid }">${ct.cname }</option>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                            </c:forEach>&ndash;%&gt;--%>
                    <%--                        </select>--%>
                    <%--                    </div>--%>

                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-success" value="Add">
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Edit Employee</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <textarea class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input type="text" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-info" value="Save">
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Delete Product</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to delete these Records?</p>
                    <p class="text-warning"><small>This action cannot be undone.</small></p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-danger" value="Delete">
                </div>
            </form>
        </div>
    </div>
</div>
<script src="js/manager.js" type="text/javascript"></script>
<script>

</script>
</body>
</html>