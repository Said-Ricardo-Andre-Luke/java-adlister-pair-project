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
            <c:choose>
                <c:when test="${ad.photo != ''}">
                    <img src="${ad.photo}" alt="photo" width="300" height="350">
                </c:when>
                <c:otherwise>
                    <img src="https://images.pexels.com/photos/7031674/pexels-photo-7031674.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="photo" width="300" height="350">
                </c:otherwise>
            </c:choose>


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

            <form method="get" action="/ad/edit">

                <input type="hidden" name="id" value="${ad.id}">
                <c:if test="${sessionScope.user != null and ad.userId == sessionScope.user.id}">
                    <button type="submit" class="btn btn-alert">Edit</button>
                </c:if>
            </form>

        </div>
    </c:forEach>
</div>

</body>
</html>
