<%@page import="mypackages.DBManager"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<%

try {

    String username = request.getParameter("username");
    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String password = request.getParameter("password");
    String query = String.format("INSERT INTO users VALUES ('%s', '%s', '%s', '%s', '%s', '%s')", username, first_name, last_name, phone, address, password);
    DBManager dbm = new DBManager();
    boolean res = dbm.insertQuery(query);
    if(res) {
        session.setAttribute("username", username);
        out.print("<script>alert('Register Successful.')</script>");
        response.sendRedirect("../");
    } else {
        out.print("<script>alert('Registeration Failed.')</script>");
        response.sendRedirect("../register.jsp");
    }

} catch(Exception e) {
    out.print("<script>alert('" + e + "')</script>");
    response.sendRedirect("../register.jsp");
}

%>
