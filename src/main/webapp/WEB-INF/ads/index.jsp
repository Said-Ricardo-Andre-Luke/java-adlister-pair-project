<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>Category: ${ad.category}</h2>
            <h3 href="http://localhost:8080/details"> Title: ${ad.title}</h3>
            <p>Description: ${ad.description}</p>
            <p>Price: ${ad.price}</p>
            <p>Date-created: ${ad.date_created}</p>

            <form method="post" action="/ads/delete">
                <input type="hidden" name="id" value="${ad.id}">
                <c:if test="${sessionScope.user != null and ad.userId == sessionScope.user.id}">
                    <button type="submit" class="btn btn-danger">Delete</button>
                </c:if>
            </form>
            <form method="get" action="/adDetail">
                <input type="hidden" name="id" value="${ad.id}">
                <c:if test="${sessionScope.user != null}">
                    <button type="submit" class="btn btn-primary">Details</button>
                </c:if>
            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>
