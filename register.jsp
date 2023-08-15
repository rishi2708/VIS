<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Register</title>
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
            <c:param name="title" value="register" />
        </c:import>


        <!-- Register Form -->
        <section id="form">
            <form action="backend/register.jsp" method="post" class="details-form">
                <div class="container">
                    <h2 class="title">Register</h2>
                    <div class="field">
                        <label for="username" class="label">Username *</label>
                        <input type="text" id="username" class="input-details" name="username" placeholder="Username" required />
                    </div>
                    <div class="field">
                        <label for="first_name" class="label">First Name *</label>
                        <input type="text" id="first_name" class="input-details" name="first_name" placeholder="First Name" required />
                    </div>
                    <div class="field">
                        <label for="last_name" class="label">Last Name *</label>
                        <input type="text" id="last_name" class="input-details" name="last_name" placeholder="Last Name" required />
                    </div>
                    <div class="field">
                        <label for="phone" class="label">Phone *</label>
                        <input type="tel" id="phone" class="input-details" name="phone" placeholder="0123456789" required />
                    </div>
                    <div class="field">
                        <label for="address" class="label">Address *</label>
                        <input type="text" id="address" class="input-details" name="address" placeholder="Address" required />
                    </div>
                    <div class="field">
                        <label for="password" class="label">Password *</label>
                        <input type="password" id="password" class="input-details" name="password" required />
                    </div>
                    <button type="submit" class="submit-btn" id="submit-btn">Register</button>
                    <div class="switch-login-register">Already have an account? <a href="login.jsp">Login</a></div>
                </div>
            </form>
        </section>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</html>
