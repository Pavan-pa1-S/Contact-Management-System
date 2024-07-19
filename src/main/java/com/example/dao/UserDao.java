package com.example.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.example.config.EMFSingleton;
import com.example.entity.User;

public class UserDao {

	public boolean saveUser(User user) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();

		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.persist(user);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			manager.close();
		}
	}

	public boolean updateUser(User user) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();

		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.merge(user);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			manager.close();
		}
		
	}

	public boolean deleteUser(int userid) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();

		EntityTransaction transaction = manager.getTransaction();

		try {
			transaction.begin();
			User user = manager.find(User.class,userid);
			manager.remove(user);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			manager.close();
		}
		return true;
	}

	public User findUserById(int userId) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		
		User user = manager.find(User.class, userId);
		
		manager.close();
		
		return user;
	}

	public User getUserByEmailAndPwd(String email, String password) {
		
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		User user = null;
		try {
			Query query = manager.createQuery("from User where email = :email and password = :password",User.class);
			query.setParameter("email", email);
			query.setParameter("password", password);
			user = (User) query.getSingleResult();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			manager.close();
		}
		return user;	
	}
}
