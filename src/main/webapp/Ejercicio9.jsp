<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
		padding: 15px;
		background-color: brown;
	}
	
	td{
	
		width: 50px;
		height: 50px;
		
	}
	
	.blanco{
	
		background-color: white;
	}
	
	.negro{
	
		background-color: black;
	}
	td{
	
		width: 60px;
		height: 60px;
		text-align: center;
		
	}
	
	img{
	
		width: 50px;
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
	
		<table>
	
			<%
			
				int[] posicionAlfil = new int[2];
				int[] posicionCaballo = new int[2];
				
				String imgAlfil = "https://upload.wikimedia.org/wikipedia/commons/9/9b/Chess_blt60.png";
				String imgCaballo = "https://upload.wikimedia.org/wikipedia/commons/2/28/Chess_nlt60.png";
						
				do{
					
					 posicionAlfil[0] = (int)(Math.random() * 8) + 1;
					 posicionAlfil[1] = (int)(Math.random() * 8) + 1;
					 
					 posicionCaballo[0] = (int)(Math.random() * 8) + 1;
					 posicionCaballo[1] = (int)(Math.random() * 8) + 1;
					  
								
				}while(posicionAlfil[0] == posicionCaballo[0] && posicionAlfil[1] == posicionCaballo[1]);
					
				for(int fila = 1; fila <= 8; fila++){
					
					out.println("<tr>");
					
					for(int col = 1; col <= 8; col++){
						
						if((fila + col)%2 == 0){
							
							out.println("<td class=\"blanco\">");
							
						}else{
							
							out.println("<td class=\"negro\">");
							
						}
						
						if(fila == posicionAlfil[0] && col == posicionAlfil[1]){
							
							out.println("<img src=\"" + imgAlfil + "\">"); 
						}
						
						if(fila == posicionCaballo[0] && col == posicionCaballo[1]){
							
							out.println("<img src=\"" + imgCaballo + "\">"); 
							
						}
						
						out.println("</td>");
						
					}
					
					out.println("</tr>");
					
				}
												
			%>
			
		</table>
	
	</div>
	
	<a href="./index.jsp">Inicio</a>

</body>
</html>