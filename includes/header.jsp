<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-black bg-opacity-75 position-fixed w-100 z-3" data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">
            <img src="images/logo.png" alt="VIS" class="logo">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <c:if test="${param.title != 'login' && param.title != 'register' && param.title != 'stolenVehicles'}">
                    <li class="nav-item">
                        <a class="nav-link" href="stolenVehicles.jsp">Stolen Vehicles</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.username == null || sessionScope.username == ''}" >
                    <c:choose>
                        <c:when test="${param.title == 'login'}">
                            <li class="nav-item">
                                <a class="nav-link" href="register.jsp">Register</a>
                            </li>
                        </c:when>
                        <c:when test="${param.title == 'register'}">
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp">Login</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="register.jsp">Register</a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </c:if>
                <c:if test="${sessionScope.username != null || sessionScope.username.length() > 0}">
                    <c:choose>
                        <c:when test="${param.title == 'myVehicles'}">
                            <li class="nav-item">
                                <a class="nav-link" href="registerVehicle.jsp">Add Vehicle</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="nav-item">
                                <a class="nav-link" href="myVehicles.jsp">My Vehicles</a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                    <c:if test="${param.title != 'purchaseVehicle'}">
                        <li class="nav-item">
                            <a class="nav-link" href="purchaseVehicle.jsp">Purchase Vehicle</a>
                        </li>
                    </c:if>
                    <li class="nav-item">
                        <a class="nav-link" href="backend/logout.jsp">Logout</a>
                    </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link" href="#">Github</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
