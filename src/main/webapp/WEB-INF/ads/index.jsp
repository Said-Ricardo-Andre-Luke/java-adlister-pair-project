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
            <a href="http://localhost:8080/adDetail?id=${ad.id}">
                <h3>Title: ${ad.title}</h3>
            </a>
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
            <jsp:include page="/WEB-INF/partials/buttons.jsp">
                <jsp:param name="id" value="${user.id}"/>
                <jsp:param name="userId" value="${ad.userId}"/>
            </jsp:include>


        </div>
    </c:forEach>
</div>

</body>
</html>
