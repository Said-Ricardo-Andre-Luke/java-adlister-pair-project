<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Create a new Ad</h1>
    <form action="/ads/create" method="post">
        <%--            Dropdown added   --%>
        <label for="category">Choose category:</label>
        <select id="category" name="category">
            <option value="code">Code</option>
            <option value="electronics">Electronics</option>
            <option value="services">Services</option>
        </select>
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>

        <%--            Added newly below  --%>
        <div class="form-group">
            <label for="price">Price</label>
            <input id="price" name="price" class="form-control" type="number">
        </div>

        <%--            Date created will be for display purposes only--%>
        <%--            Added newly above  --%>

        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
