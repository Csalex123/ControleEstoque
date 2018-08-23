package br.com.ifpe.estoque.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class UsuarioDao {
	private static final String PERSISTENCE_UNIT = "estoque";
	
	public Usuario buscarUsuario(Usuario usuario) {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("FROM Usuario WHERE login LIKE :paramLogin AND senha LIKE :paramSenha");
		query.setParameter("paramLogin", usuario.getLogin());
		query.setParameter("paramSenha", usuario.getSenha());
		
		List<Usuario> registros = query.getResultList();
		Usuario obj = null;
		
		if (!registros.isEmpty()) {
		obj = (Usuario) registros.get(0);
		}
		manager.close();
		factory.close();
		return obj;
		}

}
