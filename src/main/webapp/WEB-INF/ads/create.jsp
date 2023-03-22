<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
    <%--    new styling below--%>
    <title>Login Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f2f2f2;
        }

        .card {
            width: 400px;
            margin: auto;
            margin-top: 75px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        }
    </style>
    <%--    new styling above--%>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="card">
    <h2 class="text-center">Create your own ads! </h2>
    <form action="/ads/create" method="post">
<%--        Dropdown added--%>
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

        <div class="form-group">
            <label for="price">Price</label>
            <input id="price" name="price" class="form-control" type="number">
        </div>

        <div class="form-group">
            <label for="photo">Photo</label>
            <input id="photo" name="photo" class="form-control" type="text"></input>

            <button type="submit" class="btn btn-primary btn-block mt-4">Submit</button>
    </form>
</div>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
