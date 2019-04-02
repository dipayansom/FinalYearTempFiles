package com.howtodoinjava.dao;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;

import com.howtodoinjava.entity.AdminEntity;
import com.howtodoinjava.entity.Doctor;
import com.howtodoinjava.entity.EmployeeEntity;
import com.howtodoinjava.entity.Login;
import com.howtodoinjava.entity.Patient;

@SuppressWarnings("unused")
public interface EmployeeDAO 
{
    public void addEmployee(AdminEntity admin);
    public List<AdminEntity> getAllEmployees();
    public void addPatient(Patient patient);
    public void addDoctor(Doctor doctor);
    /*public void deleteEmployee(Integer employeeId);
    public UserDetails loadUserByUsername(String username);*/
}