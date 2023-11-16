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
		
			String idioma = request.getParameter("idioma");
			String nombre = "";
			
			if(request.getParameter("nombre") != null){
				
				nombre = request.getParameter("nombre");
			}
			
			if(nombre.equals("")) nombre = "El que no debe ser nombrado";
		
			String saludo = "";
		
			switch(idioma){
			
				case "Español":
					
					saludo = "Hola";
					
					break;
					
				case "Portugues":
					
					saludo = "olá";
					
					break;
					
				case "Ingles":
					
					saludo = "Hello"; 
					
			}
			
			out.println(saludo + " " + nombre);
		
		%>
	</div>
	
	<a href="./index.jsp">Inicio</a>

</body>
</html>