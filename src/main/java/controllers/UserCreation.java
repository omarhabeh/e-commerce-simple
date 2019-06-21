package controllers;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.stereotype.Service;

import hib.Cart;
import hib.HibControl;
import hib.ProdControl;
import util.HibernateUtil;
@Service
@Transactional
public class UserCreation {

public void saveUser(HibControl user) {
	Session session = HibernateUtil.getSessionFactory().openSession();
	session.beginTransaction();
	session.save(user);
	session.getTransaction().commit();

}
public void SaveProd(ProdControl prod) {
	Session session = HibernateUtil.getSessionFactory().openSession();
	session.beginTransaction();
	session.save(prod);
	session.getTransaction().commit();
}
public void SaveCart(Cart cart) {
	Session session = HibernateUtil.getSessionFactory().openSession();
	session.beginTransaction();
	session.save(cart);
	session.getTransaction().commit();
}
}
