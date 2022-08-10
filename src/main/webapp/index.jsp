<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<title>Tablero de Damas</title>
</head>

<body>

	<% 
	int alto = Integer.parseInt(request.getParameter("alto"));
	int ancho = Integer.parseInt(request.getParameter("ancho"));
	%>
	
	<h1 id="titulo">Tablero de Damas</h1><hr>
	
	<h3>Ancho <%=ancho %> | Alto <%=alto%></h3>	
	
	<% for ( int i = 0; i < alto; i++) { %> 		 
		<div id=line>	
		  
		<% for(int j = 0; j < ancho; j++) { 
			if (i % 2 == 0 && j %2 == 0 || i % 2 != 0 && j %2 != 0 ){
		%> 		
				<div class="verde"></div> 
		
			<% } else { %>  
				          
				<div class="negro"></div>
						                 
    		<% }
		} %>     			   		
     	</div>  	 
    <% } %>     

</body>
</html>