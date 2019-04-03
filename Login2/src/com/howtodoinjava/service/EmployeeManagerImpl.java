package com.howtodoinjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.howtodoinjava.dao.EmployeeDAO;
import com.howtodoinjava.entity.AdminEntity;
import com.howtodoinjava.entity.Doctor;
import com.howtodoinjava.entity.EmployeeEntity;
import com.howtodoinjava.entity.Login;
import com.howtodoinjava.entity.Medicine;
import com.howtodoinjava.entity.Patient;

@Service
public class EmployeeManagerImpl implements EmployeeManager {
	
	@Autowired
    private EmployeeDAO employeeDAO;

	
	@Transactional
	public void addEmployee(AdminEntity admin) {
		employeeDAO.addEmployee(admin);
	}

	
	@Transactional
	public List<AdminEntity> getAllEmployees() {
		return employeeDAO.getAllEmployees();
	}


	@Override
	public void deleteEmployee(Integer employeeId) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void addPatient(Patient patient) {
		employeeDAO.addPatient(patient);
		
	}


	@Override
	public void addDoctor(Doctor doctor) {
		// TODO Auto-generated method stub
		employeeDAO.addDoctor(doctor);
		
	}


	@Override
	public void addMedicine(Medicine medicine) {
		// TODO Auto-generated method stub
		
		employeeDAO.addMedicine(medicine);
		
	}



	
	/*@Transactional
	public void deleteEmployee(Integer employeeId) {
		employeeDAO.deleteEmployee(employeeId);
	}

	public void setEmployeeDAO(EmployeeDAO employeeDAO) {
		this.employeeDAO = employeeDAO;
	}*/
}
