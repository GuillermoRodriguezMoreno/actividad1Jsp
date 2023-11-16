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
			// Ya esta validado que sea number en HTML pero aun asi lo hago aqui
		
			try{
				
				int nota1 = Integer.parseInt(request.getParameter("nota1"));
				int nota2 = Integer.parseInt(request.getParameter("nota2"));
				int nota3 = Integer.parseInt(request.getParameter("nota3"));
				
				double media = (nota1 + nota2 + nota3) / 3.0;
				
				out.println("La nota media " + nota1 + ", " + nota2 + ", " + nota3 + " = " + media);
				
				
			} catch(Exception e){
				
				e.printStackTrace();
				
				out.println("alguna nota tiene formato incorrecto");
				
			}
		
		%>
	
	</div>
	
	<a href="./index.jsp">Inicio</a>

</body>
</html>