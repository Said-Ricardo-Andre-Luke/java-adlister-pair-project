<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand navbar-light bg-light sticky-top">
    <div class="container-fluid">
        <a class="navbar-brand d-flex align-items-center" href="/ads"><img src="../picture/Ads.png" alt="icon" width="35" height="35">Adlister</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
    <c:choose>
        <c:when test="${not empty sessionScope.user}">
                <li class="nav-item">
                    <a class="nav-link" href="/profile">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/ads">Ads</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/ads/create">Create Ads</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
                <li class="nav-item d-flex align-items-center">
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success " type="submit">Search</button>
                    </form>
                </li>
        </c:when>
        <c:otherwise>
            <li class="nav-item">
                <a class="nav-link" href="/login">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/register">Register</a>
            </li>
        </c:otherwise>
    </c:choose>
            </ul>
        </div>
    </div>
</nav>

