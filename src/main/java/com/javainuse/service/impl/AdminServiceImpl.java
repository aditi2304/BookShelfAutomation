package com.javainuse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javainuse.dao.AdminDao;
import com.javainuse.dao.BookDao;
import com.javainuse.model.Admin;
import com.javainuse.model.Book;
import com.javainuse.service.AdminService;
import com.javainuse.service.BookService;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminDao adminDao;

	@Override
	public Admin getAdminById(String adminId) {
		// TODO Auto-generated method stub
		return adminDao.getAdminById(adminId);
	}
	
}
