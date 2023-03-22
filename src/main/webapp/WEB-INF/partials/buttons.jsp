<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form method="post" action="/ads/delete" class="d-inline-block">
    <input type="hidden" name="id" value="${param.id}">
    <c:if test="${sessionScope.user != null and param.userId == sessionScope.user.id}">
        <button type="submit" class="btn btn-danger">Delete</button>
    </c:if>
</form>

<form method="get" action="/adDetail" class="d-inline-block">
    <input type="hidden" name="id" value="${param.id}">
    <c:if test="${sessionScope.user != null}">
        <button type="submit" class="btn btn-primary">Details</button>
    </c:if>
</form>

<form method="get" action="/ad/edit" class="d-inline-block">
    <input type="hidden" name="id" value="${param.id}">
    <c:if test="${sessionScope.user != null and param.userId == sessionScope.user.id}">
        <button type="submit" class="btn btn-alert">Edit</button>
    </c:if>
</form>
