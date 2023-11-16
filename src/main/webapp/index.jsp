<%-- saludo1.jsp --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">

	body{
	
		margin: 0;
		padding: 0;
		border: 0;
		height: 100vh;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	div{
	
		display: inline-block;
		border: 2px solid black;
		padding: 10px;
		text-align: center;
	}
	
	ul{
	
		list-style: none;
		display: flex;
		flex-direction: column;
		align-items: center;
		padding: 0;
	}
	
	ul li{
	
		margin-bottom: 10px;
	}
	
	ul li a:hover{
	
		color: pink;
		font-size: 24px;
	}
	
	a{
	
		font-size: 22px;
		font-weight: bold;
		text-decoration: none;
		color: blue;
	}

</style>
  </head>
  <body>
    	<div>
    	
    		<h1>Guillermo Rodríguez</h1>
    		<h2>Ejercicios jsp</h2>
    		
    		<ul>
    			
    			<li><a href="./Ejercicio1.jsp">Ejercicio 1</a></li>
    			<li><a href="./Ejercicio2.jsp">Ejercicio 2</a></li>
    			<li><a href="./Ejercicio3.jsp">Ejercicio 3</a></li>
    			<li><a href="./Ejercicio4.jsp">Ejercicio 4</a></li>
    			<li><a href="./Ejercicio5.jsp">Ejercicio 5</a></li>
    			<li><a href="./Ejercicio6.jsp">Ejercicio 6</a></li>
    			<li><a href="./Ejercicio7.jsp">Ejercicio 7</a></li>
    			<li><a href="./Ejercicio8.jsp">Ejercicio 8</a></li>
    			<li><a href="./Ejercicio9.jsp">Ejercicio 9</a></li>
    			<li><a href="./Ejercicio10.jsp">Ejercicio 10</a></li>
    		
    		</ul>
    	
    	</div>
  
  </body>
</html>