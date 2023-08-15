<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Register Vehicle</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />
        <link rel="stylesheet" href="css/styles.css" />
    </head>
    <body>
        
        <c:if test="${sessionScope.username == null || sessionScope.username == ''}" >
            <c:redirect url="login.jsp" />
        </c:if>

        <%-- Loader --%>
        <c:import url="includes/loader.jsp" />
        
        
        <!-- Navbar -->
        <c:import url="includes/header.jsp" />


        <!-- Register Vehicle Form -->
        <section id="form">
            <form action="backend/registerVehicle.jsp" method="post" class="details-form">
                <div class="container">
                    <h2 class="title">Register Vehicle</h2>
                    <div class="field">
                        <label for="reg_number" class="label">Registration Number *</label>
                        <input type="text" id="reg_number" class="input-details" name="reg_number" placeholder="0x0x0x0" required />
                    </div>
                    <div class="field">
                        <label for="name_of_vehicle" class="label">Name of Vehicle *</label>
                        <input type="text" id="name_of_vehicle" class="input-details" name="name_of_vehicle" placeholder="Vehicle Name" required />
                    </div>
                    <div class="field">
                        <label for="distance_travelled" class="label">Distance Travelled *</label>
                        <input type="text" id="distance_travelled" class="input-details" name="distance_travelled" placeholder="100km" required />
                    </div>
                    <div class="field">
                        <label for="description" class="label">Description *</label>
                        <input type="text" id="description" class="input-details" name="description" required />
                    </div>
                    <div class="field">
                        <label class="label">Status *</label>
                        <div class="input-details-radio">
                            <input type="radio" class="radio" name="status" value="Stolen" />
                            <span class="radio-vals">Stolen</span>
                            <input type="radio" class="radio" name="status" value="For Sale" />
                            <span class="radio-vals">For Sale</span>
                            <input type="radio" class="radio" name="status" value="Not for Sale" />
                            <span class="radio-vals">Not for Sale</span>
                        </div>
                    </div>
                    <button type="submit" class="submit-btn" id="submit-btn">Register Vehicle</button>
                </div>
            </form>
        </section>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</html>
