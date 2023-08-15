<%@page import="mypackages.DBManager"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.time.LocalDate" %>

<%

try {

    String reg_number = request.getParameter("reg_number");
    String name_of_vehicle = request.getParameter("name_of_vehicle");
    java.sql.Date date_of_registeration = java.sql.Date.valueOf(LocalDate.now());
    String distance_travelled = request.getParameter("distance_travelled");
    String description = request.getParameter("description");
    String status = request.getParameter("status");
    String owner = session.getAttribute("username").toString();
    String query = String.format("INSERT INTO vehicles VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s')", reg_number, name_of_vehicle, date_of_registeration, distance_travelled, description, status, owner);
    DBManager dbm = new DBManager();
    boolean res = dbm.insertQuery(query);
    if(res) {
        out.print("<script>alert('Vehicle Registered Successful.')</script>");
        response.sendRedirect("../myVehicles.jsp");
    } else {
        out.print("<script>alert('Vehicle Registeration Failed.')</script>");
        response.sendRedirect("../registerVehicle.jsp");
    }

} catch(Exception e) {
    out.print("<script>alert('" + e + "')</script>");
    response.sendRedirect("../registerVehicle.jsp");
}

%>
