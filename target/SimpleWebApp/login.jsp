<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("email");
    String password = request.getParameter("password");
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_bosque",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from personal where correo='" + userName + "' and clave='" +password + "'");
    out.println("select * from personal where correo='" + userName + "' and clave='" +password + "'");
    
    if (rs.next()) {
        session.setAttribute("userid", userName);
        response.sendRedirect("ingresar.jsp");
    } else {
        out.println("Clave Incorrecta <a href='index.jsp'>intentar de nuevo</a>");
    }
%>