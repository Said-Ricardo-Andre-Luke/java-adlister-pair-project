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
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<form method="POST">
    <label for="title">Title
        <input type="text" id="title" name="title" value="${ad.title}">
    </label>
    <label for="description">Description
        <input type="text" id="description" name="description" value="${ad.description}">
    </label>
    <label for="price">Price
        <input type="text" id="price" name="price" value="${ad.price}">
    </label>
    <label for="category">Category
        <select id="category" name="category">
            <option value="blank" hidden selected>${ad.category}</option>
            <option value="code">Code</option>
            <option value="electronics">Electronics</option>
            <option value="services">Services</option>
        </select>
    </label>
    <input type="hidden" name="id" value="${ad.id}">
    <button>Done</button>
</form>
</body>
</html>