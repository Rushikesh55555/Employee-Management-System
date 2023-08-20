package com.ems.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ems.pojo.Employee;
import com.ems.repo.EmployeeRepo;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

@Repository
public class EmployeeDao {
	
	@Autowired
	EmployeeRepo eRepo;
	
	@Autowired
	EntityManager mgr;
	
	public Employee saveEmp(Employee e) {
		try {
			return eRepo.save(e);			
		} catch(Exception ex) {
			System.out.println(ex);
			return null;
		}
	}
	
	public List<Employee> allEmp(){
		return eRepo.findAll();
	}
	
	public Employee getEmployeeById(int id) {
		return eRepo.findById(id).orElse(null);
	}
	
	public void deleteEmployee(int id) {
		eRepo.deleteById(id);
	}
	
	public List<Employee> search(String key){
		String qry = "SELECT e from Employee e WHERE e.name LIKE :key";
		TypedQuery<Employee> query = mgr.createQuery(qry, Employee.class);
		query.setParameter("key", "%"+key+"%");
		return query.getResultList();
	}
}
