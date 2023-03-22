<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link rel="stylesheet" href="../mystyle.css">
</head>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<body>
<div class="container">
    <h1>Please Log In</h1>
    <form action="/login" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
<div id="hey"><div id="layer-up"></div></div>
<div id="layer-0">

    <div id="layer-1">

        <div id="layer-2">
            <div id="lines">

                <div id="layer-corner">
                </div>
            </div>
        </div>
    </div>
</div>

<div id="mtnZZZ"></div>
</body>
</html>
