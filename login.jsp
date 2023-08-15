<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />
        <link rel="stylesheet" href="css/styles.css" />
    </head>
    <body>
        
        <c:if test="${sessionScope.username != null || sessionScope.username.length() > 0}" >
            <c:redirect url="index.jsp" />
        </c:if>

        <%-- Loader --%>
        <c:import url="includes/loader.jsp" />
        
        
        <!-- Navbar -->
        <c:import url="includes/header.jsp" >
            <c:param name="title" value="login" />
        </c:import>
        

        <!-- Login Form -->
        <section id="form">
            <form action="backend/login.jsp" method="post" class="details-form">
                <div class="container">
                    <h2 class="title">Login</h2>
                    <div class="field">
                        <label for="username" class="label">Username *</label>
                        <input type="text" id="username" class="input-details" name="username" placeholder="Username" required />
                    </div>
                    <div class="field">
                        <label for="password" class="label">Password *</label>
                        <input type="password" id="password" class="input-details" name="password" required />
                    </div>
                    <button type="submit" class="submit-btn" id="submit-btn">Login</button>
                    <div class="switch-login-register">New user? <a href="register.jsp">Register</a></div>
                </div>
            </form>
        </section>
        
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</html>
