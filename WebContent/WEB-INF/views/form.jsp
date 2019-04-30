<%@page import="com.uca.capas.domain.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Fecha de Nacimiento</th>
			<th>Carrera</th>
			<th>Experiencia</th>
		</tr>
		<tr>
			<td><c:out value="${student.name}"/></td>
			<td><c:out value="${student.lastName}"/></td>
			<td><c:out value="${student.bDate}"/></td>
			<td><c:out value="${student.career}"/></td>
			<td><c:out value="${student.experience}"/></td>
		</tr>
	
	</table>
	<br><br>
	<c:set value="${student.career}" var="carrera"/>
	<c:set value="Informatica" var="compCarrera"/>
	<c:choose>
	    <c:when test="${carrera == compCarrera}">
	        <c:out value="YAY ${carrera}! :D"/>
	    </c:when>
	    <c:otherwise>
        	<c:out value="No es info :("/>
    </c:otherwise>
    </c:choose>
    
</body>
</html>