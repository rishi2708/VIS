<%@page import="mypackages.DBManager"%>
<%@page import="java.sql.*" %>

<%

try {

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    DBManager dbm = new DBManager();
    String query = String.format("SELECT * FROM users WHERE username = '%s' and password = '%s'", username, password);
    ResultSet rs = dbm.selectQuery(query);
    if(rs.next()) {
        session.setAttribute("username", username);
        out.print("<script>alert('Login Successful.')</script>");
        response.sendRedirect("../");
    } else {
        //out.print("<script>alert('User doesn't exist.')</script>");
        out.print("Failed");
        response.sendRedirect("../login.jsp");
    }

} catch(Exception e) {
    out.print("<script>alert('" + e + "')</script>");
    response.sendRedirect("../login.jsp");
}

%>
