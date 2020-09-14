<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/14
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
        <div class="col-md-12 column">
            <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
                <input type="hidden" name="bookID" value="${book.bookID}">
                <div class="form-group">
                    <label for="bookName">书籍名称：</label>
                    <input required type="text" name="bookName" value="${book.bookName}" class="form-control"
                           id="bookName" placeholder="请输入书籍名称">
                </div>
                <div class="form-group">
                    <label for="bookCount">书籍数量：</label>
                    <input required type="number" name="bookCounts" value="${book.bookCounts}" class="form-control"
                           id="bookCount" placeholder="请输入书籍数量">
                </div>
                <div class="form-group">
                    <label for="bookDetail">书籍描述：</label>
                    <input required type="text" name="detail" value="${book.detail}" class="form-control"
                           id="bookDetail" placeholder="请输入书籍描述">
                </div>
                <button type="submit" class="btn btn-default">update it</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
