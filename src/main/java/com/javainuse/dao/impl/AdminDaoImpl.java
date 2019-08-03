package com.javainuse.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.javainuse.dao.AdminDao;

import com.javainuse.model.Admin;
import com.javainuse.model.Employee;


@Repository
public class AdminDaoImpl extends JdbcDaoSupport implements AdminDao{
	
	@Autowired 
	DataSource dataSource;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
	}

	@Override
	public Admin getAdminById(String adminId) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM admin WHERE adminid = ?";
		return (Admin)getJdbcTemplate().queryForObject(sql, new Object[]{adminId}, new RowMapper<Admin>(){
			@Override
			public Admin mapRow(ResultSet rs, int rwNumber) throws SQLException {
				Admin adm = new Admin();
				adm.setAdminId(rs.getString("adminId"));
				adm.setAdminPassword(rs.getString("adminPassword"));
				return adm;
			}
		});
	}
	
	
}