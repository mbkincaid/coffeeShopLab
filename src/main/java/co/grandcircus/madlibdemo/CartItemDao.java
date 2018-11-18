package co.grandcircus.madlibdemo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class CartItemDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<CartItem> findAll() {
		return em.createQuery("FROM CartItem", CartItem.class ).getResultList();
	}
	public CartItem findById(Long id) {
		return em.find(CartItem.class, id);
	}
	public void update(CartItem cartItem) {
		em.merge(cartItem);
	}
	public void create(CartItem cartItem) {
		em.persist(cartItem);
	}
	public void deleteCartItem(long id) {
		CartItem cartItem = em.getReference(CartItem.class, id);
		em.remove(cartItem);
	}
}
