<%@page import="java.math.RoundingMode"%>
<%@page import="java.math.MathContext"%>
<%@page import="java.math.BigDecimal"%>
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
			try{
				
				String aa = request.getParameter("a");
				String bb = request.getParameter("b");
				String cc = request.getParameter("c");
				
				if(aa.equals("")) aa = "1";
				if(bb.equals("")) bb = "1";
				if(cc.equals("")) cc = "1";
		
				BigDecimal a = new BigDecimal(aa);
				BigDecimal b = new BigDecimal(bb);
				BigDecimal c = new BigDecimal(cc);
				
				BigDecimal resultado1;
				BigDecimal resultado2;
				
				// 4ac
				BigDecimal cuatroAC = BigDecimal.valueOf(4).multiply(a).multiply(c);

				// raiz
				BigDecimal raiz = ((b.pow(2)).subtract(cuatroAC)).sqrt(MathContext.DECIMAL128);
				
				// resultado +
				resultado1 = (b.negate().add(raiz)).divide(BigDecimal.valueOf(2).multiply(a), MathContext.DECIMAL128);
				
				// resultado -
				resultado2 = (b.negate().subtract(raiz)).divide(BigDecimal.valueOf(2).multiply(a), MathContext.DECIMAL128);
				
				out.println("Resultado 1 = " + resultado1.setScale(2, RoundingMode.HALF_EVEN) + "<br>");
				out.println("Resultado 2 = " + resultado2.setScale(2, RoundingMode.HALF_EVEN));
				
				
			}catch(Exception e){
				
				e.printStackTrace();
				out.println("Formato de datos incorrecto");
			}
		
		%>
	
	</div>
	
	<a href="./index.jsp">Inicio</a>

</body>
</html>