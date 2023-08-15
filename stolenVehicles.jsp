<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page errorPage="errorPage.jsp" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Stolen Vehicles</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />
        <link rel="stylesheet" href="css/styles.css" />
    </head>
    <body>
        
        <sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/vis" user="root" password="" />
        <sql:query dataSource="${dataSource}" var="rs">
            SELECT vehicles.*, users.phone FROM vehicles LEFT JOIN users on vehicles.owner = users.username WHERE vehicles.status = 'Stolen';
        </sql:query>

        <%-- Loader --%>
        <c:import url="includes/loader.jsp" />


        <!-- Navbar -->
        <c:import url="includes/header.jsp" >
            <c:param name="title" value="stolenVehicles" />
        </c:import>


        <section id="stolen-vehicles">
            <div class="container-fluid pt">
                <h1 class="mb-4">Stolen Vehicles</h1>
                <div class="table-responsive">
                    <table class="table table-dark table-striped-columns table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Registration Number</th>
                                <th scope="col">Name</th>
                                <th scope="col">Date of purchasing</th>
                                <th scope="col">Distance Travelled</th>
                                <th scope="col">Description</th>
                                <th scope="col">Owner</th>
                                <th scope="col">Phone</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="vehicle" items="${rs.rows}" varStatus="status">
                                <tr>
                                    <th scope="row"><c:out value="${status.index + 1}" /></th>
                                    <td><c:out value="${vehicle.reg_number}" /></td>
                                    <td><c:out value="${vehicle.name_of_vehicle}" /></td>
                                    <td><c:out value="${vehicle.date_of_registeration}" /></td>
                                    <td><c:out value="${vehicle.distance_travelled}" /></td>
                                    <td><c:out value="${vehicle.description}" /></td>
                                    <td><c:out value="${vehicle.owner}" /></td>
                                    <td><c:out value="${vehicle.phone}" /></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</html>
