<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">

    <h1 class="mt-5">Welcome, ${sessionScope.user.username}!</h1>
        <div class="container d-flex justify-content-center">
            <c:forEach var="ad" items="${ads}">
                <c:if test="${ad.userId == sessionScope.user.id}">
                    <div class="card m-3 border border-grey col-md-3">
                        <div class="card-body">
                            <h2 class="card-title">Category: ${ad.category}</h2>
                            <a href="http://localhost:8080/adDetail?id=${ad.id}">
                                <h3 class="card-subtitle mb-2">${ad.title}</h3>
                            </a>
                            <p class="card-text" style="font-size: 18px;">${ad.description}</p>
                            <p class="card-text" style="font-size: 18px;">Price: ${ad.price}</p>
                            <p class="card-text">Date-created: ${ad.date_created}</p>
                            <c:choose>
                                <c:when test="${ad.photo != ''}">
                                    <img class="card-img-top m-1" src="${ad.photo}" alt="photo">
                                </c:when>
                                <c:otherwise>
                                    <img class="card-img-top m-1" src="https://images.pexels.com/photos/7031674/pexels-photo-7031674.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                                         alt="photo">
                                </c:otherwise>
                            </c:choose>
                            <jsp:include page="/WEB-INF/partials/buttons.jsp">
                                <jsp:param name="id" value="${ad.id}"/>
                                <jsp:param name="userId" value="${ad.userId}"/>
                            </jsp:include>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>

</div>

</body>
</html>
