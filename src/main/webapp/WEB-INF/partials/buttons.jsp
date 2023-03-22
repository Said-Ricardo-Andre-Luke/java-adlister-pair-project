<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form method="post" action="/ads/delete">
    <input type="hidden" name="id" value="${param.id}">
    <c:if test="${sessionScope.user != null and param.userId == sessionScope.user.id}">
        <button type="submit" class="btn btn-danger">Delete</button>
    </c:if>
</form>

<form method="get" action="/adDetail">
    <input type="hidden" name="id" value="${param.id}">
    <c:if test="${sessionScope.user != null}">
        <button type="submit" class="btn btn-primary">Details</button>
    </c:if>
</form>

<form method="get" action="/ad/edit">
    <input type="hidden" name="id" value="${param.id}">
    <c:if test="${sessionScope.user != null and param.userId == sessionScope.user.id}">
        <button type="submit" class="btn btn-alert">Edit</button>
    </c:if>
</form>
