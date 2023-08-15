<%@page import="mypackages.DBManager"%>
<%@page import="java.sql.*" %>

<%

try {

    String reg_number = request.getParameter("reg_number");
    DBManager dbm = new DBManager();
    String query = String.format("DELETE FROM vehicles WHERE reg_number = '%s'", reg_number);
    boolean rs = dbm.insertQuery(query);
    if(rs) {
        response.sendRedirect("../myVehicles.jsp");
    } else {
        response.sendRedirect("../myVehicles.jsp");
    }

} catch(Exception e) {
    out.print("<script>alert('" + e + "')</script>");
    response.sendRedirect("../myVehicles.jsp");
}

%>
