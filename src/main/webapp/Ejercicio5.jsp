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
	
	p{
		
		display: inline-block;
	
	}
	
	input{
	
		width: 60px;
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
	
		<form action="ResultadoEj5.jsp">
		
			<input type="text" name="a" placeholder="a">
			<p>X² +</p>
			<input type="text" name="b" placeholder="b">
			<p>X + </p>
			<input type="text" name="c" placeholder="c">
			
			<input type="submit" value="Calcular">
		
		</form>
		
	</div>
	
	<a href="./index.jsp">Inicio</a>

</body>
</html>