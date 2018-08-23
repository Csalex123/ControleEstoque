<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Importando a biblioteca Taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	
	<div class="container">
	<h1 >Controle Estoque</h1>
	${msg}
		<div class="panel panel-default">
			<div class="col-sm-5" style="float: none; margin: 0 auto;">
				<h1>Efetuar Login</h1>
				<form action="efetuarLogin" method="post">

					<br />
					<div class="form-group" style="text-align: left;">
						<label for="inputLogin">Login</label> <input type="text"
							class="form-control" id="inputLogin" name="login"
							value="${usuario.login}" maxlength="20" required="required"
							tabindex="1">
					</div>
					<div class="form-group" style="text-align: left;">
						<label for="inputSenha">Senha</label> <input type="password"
							class="form-control" id="inputSenha" name="senha"
							value="${usuario.senha}" maxlength="20" required="required"
							tabindex="2">
					</div>
					<br />
					<button type="submit" class="btn btn-primary" tabindex="3"
						style="width: 100%; height: 50px;">&nbsp; ENTRAR &nbsp;</button>
				</form>

			</div><br><br>
		</div>
	</div>

</body>
</html>