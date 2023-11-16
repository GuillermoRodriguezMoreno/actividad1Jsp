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
		text-align: center;
	}
	
	img{
	
		width: 300px;
		margin-bottom: 20px;
	}
	
	.sabores{

		border: 0;
				
	}
	
	.cntdrSection{
	
		display: flex;
		flex-direction: row;
		border: 0;
	}
	
	section{
		
		flex: 1 0 30%;
		display: flex;
		flex-direction: column;
		align-items: center;
		margin-bottom: 20px;
	}
	
	input{
		
		width: 100px;
	}
	
	#enviar{
	
		text-align: center;
		height: 40px;
		width: 200px;
	}
	
	.margen{
	
		margin-left: 10px;
		margin-right: 10px;
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
	
		<h1>Maquina de helados</h1>
		
		<p>Seleccione los porcentajes para preparar un helado a su gusto</p>
		
		<div class="sabores">
		
			<form action="ResultadoEj10.jsp">
			
				<div class="cntdrSection">
		
					<section>
					
						<img alt="" src="https://cdn.pixabay.com/photo/2013/09/18/18/24/chocolate-183543_1280.jpg">
					
						<input type="number" name="chocolate" placeholder="Chocolate %" min="0" max="100">
					
					</section>
					
					<section class="margen">
					
						<img alt="" src="https://cdn.pixabay.com/photo/2017/11/18/17/09/strawberries-2960533_1280.jpg">
					
						<input type="number" name="fresa" placeholder="Fresa %" min="0" max="100">
					
					</section>
					
					<section>
					
						<img alt="" src="https://cdn.pixabay.com/photo/2019/11/07/13/05/waffle-4608843_1280.jpg">
					
						<input type="number" name="vainilla" placeholder="Vainilla %" min="0" max="100">
					
					</section>
					
				</div>
				
				<input type="submit" value="Preparar Helado" id="enviar">
				
			</form>
		
		</div>
	
	</div>
	
	<a href="./index.jsp">Inicio</a>

</body>
</html>