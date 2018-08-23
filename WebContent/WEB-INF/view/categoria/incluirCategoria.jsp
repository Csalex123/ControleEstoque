<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Importando a biblioteca Taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Estoque</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<c:import url="../produto/menu.jsp" />

	<hr>
	<h3 align="center">Incluir Categoria</h3>
	<hr>
	<div class="container">
		<div class="panel panel-default"><br>
			<div class="col-sm-5" style="float: none; margin: 0 auto;">
				
				<form action="save" method="post">
					<br>
					<p>
						Descrição: <br /> <input class="form-control" type="text"
							name="descricao" />
					</p>
					<button type="reset" class="btn btn-default">&nbsp; Limpar &nbsp;</button> &nbsp;
				    <button type="submit" class="btn btn-primary">&nbsp; Inserir &nbsp; </button>
				    <br><br><br>
				</form>
				
			</div>
		</div>
	</div>
	
</body>
</html>