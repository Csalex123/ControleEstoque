<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Importando a biblioteca Taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Biblioteca  de formatação de data-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



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

<script type="text/javascript">
	$(document).ready(function() {

		function carregaTabelaJSon() {
			var texto = $('#descricao').val();
			var idCategoria = $('#categoriaProduto').val();
			
			
			$.post("filter", {
				'descricao' : texto,
				'idCategoria' : idCategoria
				}, function(dadosJSON) {
					
				console.log(dadosJSON);
				...
				});

		}
		
		$("#descricao").keyup(function() {
			carregaTabelaJSon();
		});

		$("#categoriaProduto").change(function() {
			carregaTabelaJSon();
		});
	});
</script>
</head>
<body>

	<c:import url="menu.jsp" />



	<hr>
	<h3>Filtro Produtos</h3>
	<hr>

	<div>
		<form action="filter">
			<div class="form-group">
				<label for="inputCodigo">Código</label> <input type="text"
					id="inputCodigo" class="form-control" name="codigo"
					style="width: 100px;" maxlength="5" />
			</div>
			<div class="form-group">
				<label for="inputDescricao">Descrição</label> <input type="text"
					id="inputDescricao" class="form-control" name="descricao"
					style="width: 500px;" maxlength="100" />
			</div>
			<div class="form-group">
				<button type="reset" class="btn btn-default">&nbsp; Limpar
					&nbsp;</button>
				&nbsp;
				<button type="submit" class="btn btn-primary">&nbsp;
					Filtrar &nbsp;</button>
			</div>
		</form>
	</div>

	<h1 align="center">Lista de produtos</h1>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Código</th>
				<th>Descrição</th>
				<th>Preco custo</th>
				<th>Preco de venda</th>
				<th>Garantia</th>
				<th>Imagem</th>
				<th>Ações</th>

			</tr>
		</thead>


		<tbody>

			<c:forEach var="produto" items="${listaProduto}">
				<tr>
					<td>${ produto.getCodigo() }</td>
					<td>${ produto.getDescricao() }</td>
					<td>R$ ${ produto.getPrecoCusto() }</td>
					<td>R$ ${ produto.getPrecoVenda()}</td>
					<td><fmt:formatDate value="${produto.getGarantia()}"
							pattern="dd/MM/yyyy" /></td>
					<c:choose>
						<c:when
							test="${produto.getImagem().equals('') || produto.getImagem() == null }">
							<td>Produto não contem imagem.</td>
						</c:when>
						<c:otherwise>
							<td><img style="width: 200px; height: 200;"
								src="<%=request.getContextPath()%>/resources/img/${ produto.imagem }"></td>
						</c:otherwise>
					</c:choose>
					<td><a class="btn btn-primary" href="edit?id=${produto.id}">Alterar</a>
						<a class="btn btn-danger" href="delete?id=${produto.id}">Apagar</a>
					</td>

				</tr>
			</c:forEach>

		</tbody>

	</table>
	Total de itens: ${listaProduto.size()}
</body>
</html>