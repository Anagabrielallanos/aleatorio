<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
<h2> Carrera con sus respectivos cursos</h2>
<hr/>

<h1>
	<c:out value="${Carrera}"></c:out>

</h1>
	<hr>
		<c:if test="${Carrera=='Ingenieria'}">
			<c:forEach var ="ing" items="${ingenieria}" >
				<ol>
					<li> <c:out value="${ing}"></c:out> </li>
				</ol>
			</c:forEach>
				
		</c:if>
	
		<c:if test="${Carrera=='Derecho'}">
			<c:forEach var ="derecho" items="${der}" >
				<ol>
					<li> <c:out value="${derecho}"></c:out> </li>
				</ol>
			</c:forEach>
				
		</c:if>
		
		<c:if test="${Carrera=='Contabilidad'}">
			<c:forEach var ="con" items="${conta}" >
				<ol>
					<li> <c:out value="${con}"></c:out> </li>
				</ol>
			</c:forEach>				
		</c:if>		
				
		<c:if test="${Carrera=='Arquitectura'}">
			<c:forEach var ="arq" items="${arqui}" >
				<ol>
					<li> <c:out value="${arq}"/> </li>
				</ol>
			</c:forEach>
		</c:if>	
		
		
		<c:if test="${Carrera=='Idiomas'}">
			<c:forEach var ="id" items="${idio}" >
				<ol>
					<li> <c:out value="${id}"></c:out> </li>
				</ol>
			</c:forEach>
		</c:if>	
		
		
		<c:if test="${Carrera=='Minas'}">
			<c:forEach var ="mi" items="${min}" >
				<ol>
					<li> <c:out value="${mi}"></c:out> </li>
				</ol>
			</c:forEach>
		</c:if>	
		<hr>







</body>
</html>
