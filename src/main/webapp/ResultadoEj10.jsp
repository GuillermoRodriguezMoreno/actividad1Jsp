<%@page import="org.iesvdm.ExcepcionMayorCien"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	body{
	
		margin: 0;
		padding: 0;
		border: 0;
		height: 100vh;
		display: flex;
		align-items: center;
		justify-content: center;
		flex-direction: column;
	}

	div{
	
		display: inline-block;
		border: 2px solid black;
		padding: 10px;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	#tarrina{
	
		border: solid black 4px;
		border-top: 0;
		width: 70%;
		height: 200px;
		margin-top: 40px;
		padding: 10px 0 0 0;
		display: flex;
		flex-direction: column;
		justify-content: flex-end;
	}
	
	p{
	
		margin: 0;
		width: 100%;
		font-weight: bold;
		
	}
		a{
		
		padding: 7px;
		border:2px solid black;
		border-radius: 10px;
		margin-top: 30px;
		text-decoration: none;
		color: black;
		font-weight: bold;
		font-size: 18px;  
		
	}
	
	a:hover{
	
		font-size: 20px;
		color: white;
		background-color: black;
	}
	

</style>
</head>
<body>

	<div>
	
		<%
		
			try{
				
				String chocolate = request.getParameter("chocolate");
				String fresa = request.getParameter("fresa");
				String vainilla = request.getParameter("vainilla");
				
				if(chocolate.equals("")) chocolate = "0";
				if(fresa.equals("")) fresa = "0";
				if(vainilla.equals("")) vainilla = "0";
				
				int cantChocolate = Integer.parseInt(chocolate);
				int cantFresa = Integer.parseInt(fresa);
				int cantVainilla = Integer.parseInt(vainilla);
				
				if((cantChocolate + cantFresa + cantVainilla) > 100) throw new ExcepcionMayorCien("La suma de las cantidades no puede ser mayor que 100%");
				
				out.println("<h1>Aqui tiene su tarrina de helado</h1>");
				out.println("<div id=\"tarrina\">");
				
					if(cantChocolate > 0){
						
						out.println("<p style=\"height:" + cantChocolate + "%; background-color: brown" + "\">Chocolate " + cantChocolate + "%</p>");
					}
					
					if(cantFresa > 0){
						
						out.println("<p style=\"height:" + cantFresa + "%; background-color: pink" + "\">Fresa " + cantFresa + "%</p>");
					}
					
					if(cantVainilla > 0){
						
						out.println("<p style=\"height:" + cantVainilla + "%; background-color: #fff6d5" + "\">vainilla " + cantVainilla + "%</p>");
					}
				
				out.println("</div>");
				
			}catch(ExcepcionMayorCien e){
				
				out.println(e.getMessage());
				
			}catch(Exception e){
				
				out.println("El formato de los datos no es el adecuado");
			}
		
		%>
	
	</div>
	
	<a href="./index.jsp">Inicio</a>

</body>
</html>