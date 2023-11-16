<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.Month"%>
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
	
		display: flex;
		flex-direction: column;
		align-items: center;
		border: 2px solid black;
		padding: 10px;
		text-align: center;
	}
	
	h1{
	
		text-decoration: underline;
	}
	
	table{
	
		text-align: center;
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
		
				String mes = request.getParameter("mes");
				String mesEsp = mes;
				String año = request.getParameter("año");
				
				int year = Integer.parseInt(año);
				
				// Obtener mes en ingles
				
				switch(mes){
				
					case "Enero":
						
						mes = "january";
						
						break;
						
					case "Febrero":
						
						mes = "february";
						
						break;
										
					case "Marzo":
						
						mes = "march";
						
						break;
						
					case "Abril":
						
						mes = "april";
						
						break;
						
					case "Mayo":
						
						mes = "may";
						
						break;
						
					case "Junio":
						
						mes = "january";
						
						break;
						
					case "Julio":
						
						mes = "june";
						
						break;
						
					case "Agosto":
						
						mes = "july";
						
						break;
						
					case "Septiembre":
						
						mes = "september";
						
						break;
						
					case "Octubre":
						
						mes = "october";
										
						break;
										
					case "Noviembre":
						
						mes = "november";
						
						break;
						
					case "Diciembre":
						
						mes = "december";
							
				}
				
				
				// obtener enum Month
				
				mes = mes.toUpperCase();
				
				Month month = Month.valueOf(mes);
				
				// Fecha
				
				LocalDate fecha = LocalDate.of(year, month, 1); // primer dia del mes
				
				// Array dias
				
				String[] diasSemana = {"Lun", "Mar", "Mier", "Jue", "Vie", "Sab", "Dom"};
				
				// impresion tabla
				
				out.println("<h1>" + mesEsp + " " + año + "</h1>");
				
				// <table>
				
				out.println("<table>");
				
				// Impresion cabecera
				
				// <tr>
				
				out.println("<tr>");
				
				for(String dia : diasSemana){
					
					out.println("<th>" + dia + "</th>");
					
				}
				
				//</tr>
				
				out.println("</tr>");
				
				// Obtener dia que empieza el mes
				
				int numeroPrimerDia = fecha.getDayOfWeek().getValue();
				
				int contadorDias = 1;
				int diaCalendario = 1;
				int diaFinalMes = fecha.lengthOfMonth();
				
				//imprimir hasta dia final de mes + dia de inicio ya que los primeros dias en blanco no cuentan
				
				while(contadorDias < diaFinalMes + numeroPrimerDia){
					
					// <tr>
					out.println("<tr>");
					
					// Imprimir semanas
					for(int i = 1; i <= 7; i++){
						
						// <td>
						out.println("<td>");
						
						// Si debe estar en blanco 
						if(contadorDias < numeroPrimerDia || contadorDias >= diaFinalMes + numeroPrimerDia){
							
							out.println("  ");
						
						}else{ // si debe imprimir dia
							
							out.println(diaCalendario);
							diaCalendario++;
						}
						
						// </td>
						out.println("</td>");
						
						
						// Incremento dias
						contadorDias++;
					}
					
					// </tr>
					out.println("</tr>");
					
				}
				
				// </table>
				out.println("</table>");
				
			}catch(Exception e){
				
				e.printStackTrace();
				
			}
		%>
	
	</div>
	
	<a href="./index.jsp">Inicio</a>

</body>
</html>