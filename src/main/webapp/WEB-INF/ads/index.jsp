<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <title></title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Here Are all the ads!</h1>
    <div class="row">
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-4">
                <a href="http://localhost:8080/adDetail?id=${ad.id}" class="text-decoration-none link-dark">
                <div class="card text-center my-4 text-decoration-none">
                    <div class="card-header bg-dark bg-opacity-50 text-light">
                            <h2>Title: ${ad.title}</h2>
                    </div>
                    <div class="card-body bg-dark-subtle bg-opacity-25 text-light">
                    <c:choose>
                        <c:when test="${ad.photo != ''}">
                            <img src="${ad.photo}" alt="photo" width="300" height="350">
                        </c:when>
                        <c:otherwise>
                            <img src="https://images.pexels.com/photos/7031674/pexels-photo-7031674.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                                 alt="photo" width="300" height="350">
                        </c:otherwise>
                    </c:choose>
                        <p>Price: $${ad.price}0</p>
                        <p class="date">Posted: ${ad.date_created}</p>
                        <p>Posted by:</p>
                        <span>Category: ${ad.category}</span>
                    </div>
                    <div class="card-footer text-light bg-dark bg-opacity-50 d-flex justify-content-between align-items-center-center">
                        <jsp:include page="/WEB-INF/partials/buttons.jsp">
                            <jsp:param name="id" value="${ad.id}"/>
                            <jsp:param name="userId" value="${ad.userId}"/>
                        </jsp:include>
                    </div>
                </div>
                </a>
            </div>
        </c:forEach>
    </div>
    </div>
</div>
<script src="../../js/date-format.js"></script>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>--%>
</body>
</html>
