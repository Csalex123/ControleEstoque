package br.com.ifpe.estoque.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import br.com.ifpe.estoque.model.CategoriaProduto;
import br.com.ifpe.estoque.model.CategoriaProdutoDao;
import br.com.ifpe.estoque.model.Produto;
import br.com.ifpe.estoque.model.ProdutoDao;
import br.com.ifpe.estoque.util.Util;


@Controller
public class CategoriaController {
	
	@RequestMapping("/categoria/add")
	public String adicionarCategoria() {
		
		return "categoria/incluirCategoria";
	}
	
	@RequestMapping("/categoria/save")
	public String save(CategoriaProduto categoriaProduto) {

		
		CategoriaProdutoDao dao = new CategoriaProdutoDao();
		dao.salvar(categoriaProduto);
		return "categoria/incluirCategoriaSucesso";
	}

}
