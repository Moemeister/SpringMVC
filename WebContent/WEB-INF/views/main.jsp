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
	<h1><c:out value="${message}"/></h1>
	
	<form action="${pageContext.request.contextPath}/formData" method="post">
		<label>Nombre: </label><input type="text" name="name"><br>
		<label>Apellido: </label> <input type="text" name="lname"><br>
		<label>Fecha de Nacimiento: </label> <input type="date" name="bdate"><br>
		<label>Carrera: </label> <input type="text" name="career"><br>
		<label>Experiencia: </label> <input type="text" name="experience"><br>
		<input type="submit" value="ENVIAR">
		
	</form>

</body>
</html>