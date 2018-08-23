package br.com.ifpe.estoque.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class CategoriaProdutoDao {
	
	private static final String PERSISTENCE_UNIT = "estoque";
	
	public void salvar(CategoriaProduto categoriaProduto) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(categoriaProduto);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	
	public List<CategoriaProduto> listar(CategoriaProduto categoria) {

		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();

		Query query = null;
		query = manager.createQuery("FROM CategoriaProduto ORDER BY descricao");
		
		List<CategoriaProduto> lista = query.getResultList();
		manager.close();
		factory.close();
		
		return lista;
	}

}
