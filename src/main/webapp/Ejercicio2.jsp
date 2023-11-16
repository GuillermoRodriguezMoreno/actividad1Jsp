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
	
		<form action="ResultadoEj2.jsp">
		
			<input type="text" name="nombre" placeholder="Escribe tu nombre">
		
			Selecciona un idioma
			
			<select name="idioma">
			
				<option>Español</option>
				<option>Ingles</option>
				<option>Portugues</option>
			
			</select>
			
			<input type="submit">
		
		</form>
	
	</div>
	
	<a href="./index.jsp">Inicio</a>

</body>
</html>