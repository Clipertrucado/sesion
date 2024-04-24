<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>

<%

String sesion = "cerrada";
String sesion2 = "Para el usuario admin la sesion esta: ";

try {  //AQUI VA EL CONTROL DE SESION
	String acceso = session.getAttribute("attributo2").toString();
 	if (!acceso.equals("admin")){
 		sesion = "cerrada";
 		
 	}
 	else{ sesion = acceso;
 		sesion2 = "hola guapisimo usuario: ";
 	}
} catch (Exception e) {
	
}

%>
<html>
<head>

<link rel="stylesheet" href="common/general.css">

</head>
<body>
<h1><%=sesion2 %> <%=sesion %></h1>
<hr/>
<p><a href="bienvenido.jsp">Página principal</a></p>
<p><a href="cerrarsesion.jsp">Salir</a></p>
<hr/>
<div id="contenedor1">
</div>

</body></html>