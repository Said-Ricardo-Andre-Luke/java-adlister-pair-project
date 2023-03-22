<%--
  Created by IntelliJ IDEA.
  User: andremurray
  Date: 3/21/23
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
    <title>edit</title>
    <%--    new styling below--%>
    <title>Edit Ad page</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f2f2f2;
        }

        .card {
            width: 400px;
            margin: auto;
            margin-top: 75px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        }
    </style>
    <%--    new styling above--%>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="card">
    <h2 class="text-center">Edit your ads</h2>
    <form method="POST">
        <div class="form-group">
            <label for="title">Title:</label>
            <input type="text" class="form-control" id="title" name="title" value="${ad.title}">
        </div>
        <div class="form-group">
            <label for="description">description:</label>
            <input type="text" class="form-control" id="description" name="description" value="${ad.description}">
        </div>
        <div class="form-group">
            <label for="price">Price: </label>
            <input type="text" class="form-control" id="price" name="price" value="${ad.price}">
        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <select id="category" name="category">
                <option value="blank" hidden selected>${ad.category}</option>
                <option value="code">Code</option>
                <option value="electronics">Electronics</option>
                <option value="services">Services</option>
            </select>
        </div>
        <input type="hidden" name="id" value="${ad.id}">
        <button type="submit" class="btn btn-primary btn-block">Done</button>
    </form>
</div>
</body>
</html>