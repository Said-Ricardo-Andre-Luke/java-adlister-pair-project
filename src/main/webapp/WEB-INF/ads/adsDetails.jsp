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
</head>
<body>

<%--Required to be checked, how to get the details of a single Ad--%>

<div class="col-md-6">
    <form method="get" action="/ads">
    <button type="submit">X</button>
    </form>
    <h2>Category: ${ad.category}</h2>
    <h3 href="http://localhost:8080/details"> Title: ${ad.title}</h3>
    <p>Description: ${ad.description}</p>
    <p>Price: ${ad.price}</p>
    <p>Date-created: ${ad.date_created}</p>
    <c:choose>
        <c:when test="${ad.photo != ''}">
            <img src="${ad.photo}" alt="photo" width="300" height="350">
        </c:when>
        <c:otherwise>
            <img src="https://images.pexels.com/photos/7031674/pexels-photo-7031674.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="photo" width="300" height="350">
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
