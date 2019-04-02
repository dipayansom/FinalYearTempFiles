package com.howtodoinjava.service;

import java.util.List;

import com.howtodoinjava.entity.AdminEntity;
import com.howtodoinjava.entity.Doctor;
import com.howtodoinjava.entity.EmployeeEntity;
import com.howtodoinjava.entity.Login;
import com.howtodoinjava.entity.Patient;

public interface EmployeeManager {
	public void addEmployee(AdminEntity admin);
    public List<AdminEntity> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
	public void addPatient(Patient patient);
	public void addDoctor(Doctor doctor);
}
