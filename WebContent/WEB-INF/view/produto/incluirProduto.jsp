<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- Importando a biblioteca Taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de produtos</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<c:import url="menu.jsp" />

	<hr>
	<h3 align="center">Incluir Produto</h3>
	<hr>
<div class="container">
<div class="panel panel-default">
<div class="col-sm-5" style="float: none; margin: 0 auto;">

	
		<form action="save" method="post" enctype="multipart/form-data">
		<br>
			<p>
				Código: <br /> <input class="form-control" type="text"
					name="codigo" />
			</p>
			<p>
				Descrição: <br /> <input class="form-control" type="text"
					name="descricao" />
			</p>
			
			<div class="form-group">
				<label for="categoriaProduto">Categoria</label> <br />
				
				<select id="categoriaProduto" name="categoriaProduto" class="form-control" >
						
						<c:forEach items="${listaCategoriaProduto}" var="obj">
							<option value="${obj.id}">${obj.descricao}</option>
						</c:forEach>
				</select>
			</div>
			<p>
				Preco de Custo: <br /> <input class="form-control" type="text"
					name="precoCusto" />
			</p>
			<p>
				Preco de Venda: <br /> <input class="form-control" type="text"
					name="precoVenda" />
			</p>

			<p>
				Data da Garantia: <br /> <input class="form-control" type="text"
					name="garantia" />
			</p>

			<p>
				quantidade: <br /> <input class="form-control" type="number"
					name="quantidade" />
			</p>
			
			<p>
				Foto do Produto: <br /> <input type="file" name="file">
			</p>
			
			
			

			<a href="listarProduto" class="btn btn-danger" role="button">Cancelar</a> &nbsp;
				
				<button type="reset" class="btn btn-default">&nbsp; Limpar &nbsp;</button> &nbsp;
				<button type="submit" class="btn btn-primary">&nbsp; Inserir &nbsp; </button>
				<br><br><br>
		</form>
	</div>
	</div><br>
</div>

</body>
</html>