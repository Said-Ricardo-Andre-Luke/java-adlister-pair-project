<%--
  Created by IntelliJ IDEA.
  User: saidshah
  Date: 3/20/23
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Viewing Ads Details" />--%>
<%--    </jsp:include>--%>
</head>
<html>
<head>
    <title>Ads Details</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<%--Required to be checked, how to get the details of a single Ad--%>

<div class="container mt-4">
    <div class="row">
        <div class="col-md-12">
            <form method="get" action="/ads">
                <button type="submit" class="btn btn-secondary">X</button>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Category: ${ad.category}</h2>
            <h3 href="http://localhost:8080/details"> Title: ${ad.title}</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <c:choose>
                <c:when test="${ad.photo != ''}">
                    <img src="${ad.photo}" alt="photo" class="img-fluid">
                </c:when>
                <c:otherwise>
                    <img src="https://images.pexels.com/photos/7031674/pexels-photo-7031674.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                         alt="photo" class="img-fluid">
                </c:otherwise>
            </c:choose>
        </div>
        <div class="col-md-6">
            <p style="font-size: 30px;">Description: ${ad.description}</p>
            <p style="font-size: 30px;">Price: ${ad.price}</p>
            <p>Date-created: ${ad.date_created}</p>
        </div>
    </div>
</div>

</body>
</html>
