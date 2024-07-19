package com.example.config;

import com.example.dao.ContactDao;
import com.example.dao.UserDao;

public class DaoSingleton {

	private static UserDao userdao;
	private static ContactDao contactdao;
	
	private DaoSingleton() {
		
	}
	
	public static UserDao getUserDaoInstace() {
		userdao = new UserDao();
		return userdao;
	}
	
	public static ContactDao getContactDaoInstace() {
		contactdao = new ContactDao();
		return contactdao;
	}	
	
}
