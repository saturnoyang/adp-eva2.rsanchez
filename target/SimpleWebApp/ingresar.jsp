<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
usted no ha ingresado<br/>
<a href="index.jsp">por favor ingrese</a>
<%} else {
%>
Bienvenido <%=session.getAttribute("userid")%>
<a href='salir.jsp'>Salir</a>
<%
    }
%>