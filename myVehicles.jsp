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
        <title>My Vehicles</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />
        <link rel="stylesheet" href="css/styles.css" />
    </head>
    <body>

        <c:if test="${sessionScope.username == null || sessionScope.username == ''}" >
            <c:redirect url="index.jsp" />
        </c:if>

        <sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/vis" user="root" password="" />
        <sql:query dataSource="${dataSource}" var="rs">
            SELECT * FROM vehicles WHERE owner = '<c:out value="${sessionScope.username}" />';
        </sql:query>

        <%-- Loader --%>
        <c:import url="includes/loader.jsp" />


        <!-- Navbar -->
        <c:import url="includes/header.jsp" >
            <c:param name="title" value="myVehicles" />
        </c:import>


        <section id="my-vehicles">
            <div class="container-fluid pt">
                <h1 class="mb-4">My Vehicles</h1>
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
                                <th scope="col">Status</th>
                                <th scope="col">Owner</th>
                                <th scope="col">Transfer Ownership</th>
                                <th scope="col">Delete</th>
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
                                    <td>
                                        <div class="dropend">
                                            <c:out value="${vehicle.status}" />
                                            <span class="dropdown-toggle dropdown-toggle-split cursor-pointer" data-bs-toggle="dropdown" aria-expanded="false"></span>
                                            <ul class="dropdown-menu dropdown-menu-dark">
                                                <li class="dropdown-item cursor-pointer"><a href="backend/changeVehicleStatus.jsp?reg_number=${vehicle.reg_number}&status=Stolen" class="text-decoration-none text-danger">Stolen</a></li>
                                                <li class="dropdown-item cursor-pointer"><a href="backend/changeVehicleStatus.jsp?reg_number=${vehicle.reg_number}&status=For+Sale" class="text-decoration-none text-danger">For Sale</a></li>
                                                <li class="dropdown-item cursor-pointer"><a href="backend/changeVehicleStatus.jsp?reg_number=${vehicle.reg_number}&status=Not+for+Sale" class="text-decoration-none text-danger">Not for Sale</a></li>
                                            </ul>
                                        </div>
                                    </td>
                                    <td><c:out value="${vehicle.owner}" /></td>
                                    <td>
                                        <span class="text-warning cursor-pointer" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                            Transfer
                                        </span>
                                        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content text-white bg-dark">
                                                    <div class="modal-header" data-bs-theme="dark">
                                                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Transfer Ownership</h1>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form action="backend/transferOwner.jsp" method="put">
                                                        <div class="modal-body">
                                                            <div class="input-group">
                                                                <span class="input-group-text text-white bg-dark">New Owner</span>
                                                                <input type="text" id="owner" class="form-control text-white bg-dark" name="owner" placeholder="New Owner Name" required />                                                            
                                                            </div>
                                                            <input class="visually-hidden" name="reg_number" value="${vehicle.reg_number}" />
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-warning">Transfer</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td><a href="backend/deleteVehicle.jsp?reg_number=${vehicle.reg_number}" class="text-decoration-none text-danger">Delete</a></td>
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
