<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!-- Importando a biblioteca Taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<body style="margin-left: 5%; margin-right: 5%;">
<br />
<c:import url="produto/	menu.jsp" />
<div align="right" style="color: #6E6E6E; margin-
right: 2%;">
Bem vindo, ${usuarioLogado.nome}
</div>

</body>
</html>