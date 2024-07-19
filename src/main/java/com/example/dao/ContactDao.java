package com.example.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.example.config.EMFSingleton;
import com.example.entity.Contact;
import com.example.entity.User;

public class ContactDao {

	public void saveContact(Contact contact) {
		
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		
		EntityTransaction transaction = manager.getTransaction();
		try {
			
			transaction.begin();
			manager.persist(contact);
			transaction.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			manager.close();
		}
		
	}
	
	public boolean updateContact(Contact contact) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		
		try {
			transaction.begin();
			manager.merge(contact);
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
	
	public boolean deleteContact(int id) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		
		try {
			transaction.begin();
			Contact contact = manager.find(Contact.class, id);
			manager.remove(contact);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			manager.close();
		}	
	}
	
	public List<Contact> findContactByUserId(User userid) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		
		List<Contact> list = null;
		
		try {
			Query query = manager.createQuery("from Contact where userId = : userid",Contact.class);
			query.setParameter("userid", userid);
			list = query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			manager.close();
		}
		return list;	
	}
	
	public Contact findContactById(int id) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		
		Contact contact = null;
		
		try {
			contact = manager.find(Contact.class, id);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			manager.close();
		}
		return contact;
	}
	
}
