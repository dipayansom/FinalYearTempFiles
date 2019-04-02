package com.howtodoinjava.controller;
 


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.howtodoinjava.entity.AdminEntity;
import com.howtodoinjava.entity.Doctor;
import com.howtodoinjava.entity.EmployeeEntity;
import com.howtodoinjava.entity.Login;
import com.howtodoinjava.entity.Patient;
import com.howtodoinjava.service.EmployeeManager;
 
@Controller
public class EditEmployeeController {
	private static Logger log = Logger.getLogger(EditEmployeeController.class);
 
    @Autowired
    private EmployeeManager employeeManager;
 
    public void setEmployeeManager(EmployeeManager employeeManager) {
        this.employeeManager = employeeManager;
    }
 
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String defaultPage(ModelMap map) {
        return "redirect:/login";
    }
   
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listEmployees(ModelMap map) {
    	if(log.isDebugEnabled()){
    		log.debug("Start Debug");
    	}
    	log.info("Going to List Employee");
    	
    	
     /*   map.addAttribute("employee", new EmployeeEntity());
        map.addAttribute("employeeList", employeeManager.getAllEmployees());
        log.info("Exiting List Employee");
        return "editEmployeeList";*/
        return "home";
    }
    
   
 
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addEmployee(
            @ModelAttribute(value = "admin") AdminEntity admin,
            BindingResult result) {
    	if(log.isDebugEnabled()){
    		log.debug("Start Debug");
    	}
    	log.info("Going to Add Employee");
    	/*Login tbllogin=new Login();
    	tbllogin.setId(admin.getId());
    	tbllogin.setUsername(admin.getEmail());
    	tbllogin.setPassword(admin.getPassword());
    	tbllogin.setStatus("u");*/
    	/*Random r=new Random();
    	int num=r.nextInt(900000)+100000;
    	admin.setId(num);
    	System.out.println(admin.getId());*/
    	
        employeeManager.addEmployee(admin);
        
        log.info("Exiting Add Employee");
        return "redirect:/list";
    }
 
    @RequestMapping("/delete/{employeeId}")
    public String deleteEmplyee(@PathVariable("employeeId") Integer employeeId) {
       	if(log.isDebugEnabled()){
    		log.debug("Start Debug");
    	}
    	log.info("Going to Delete Employee");
    	
        employeeManager.deleteEmployee(employeeId);
        
        log.info("Exiting Delete Employee");
        return "redirect:/list";
    }
 
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap model) {
    	
        return "login";
    }
 
    @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
    public String loginerror(ModelMap model) {
        model.addAttribute("error", "true");
        return "denied";
    }
    @RequestMapping(value = "/statusmismatch", method = RequestMethod.GET)
    public String statuserror(ModelMap model) {
        model.addAttribute("error", "true");
        return "locked";
    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(ModelMap model) {
        return "logout";
    }
    @RequestMapping(value ="/reg", method = RequestMethod.GET)
    public String registrationPage(ModelMap map) {
    	map.addAttribute("admin", new AdminEntity());
    	//System.out.println("DOne hsdsajdsdhjasdsdjdh");
    	if(log.isDebugEnabled()){
    		log.debug("Start Debug");
    	}
    	log.info("Going to List Employee");
        return "registration";
    }
    
    
    
    
    
    @RequestMapping(value="/addPatient", method= RequestMethod.POST)
    public String addPatient(ModelMap model){
    	
    	model.addAttribute("patient", new Patient());
    	if(log.isDebugEnabled()){
    		log.debug("Start Debug");
    	}
    	log.info("Going to add Patient page");
    	return"addPatient";
    }
    
    @RequestMapping(value = "/commitAddPatient", method = RequestMethod.POST)
    public String commitAddPatient(
            @ModelAttribute(value = "patient") Patient patient,
            BindingResult result) {
    	
    	
    	
    	if(log.isDebugEnabled()){
    		log.debug("Start Debug");
    	}
    	log.info("Going to Add Patient");
    	
    	employeeManager.addPatient(patient);
        
        log.info("Exiting Add Patient");
        return "redirect:/list";
    }
    
    @RequestMapping(value="/addDoctor", method = RequestMethod.POST)
    public String addDoctor(ModelMap modelMap){
    	System.out.println("------------------------------------------------------------------------REDIRECT");
    	modelMap.addAttribute("doctor", new Doctor());
    	return "addDoctor";
    }
    
    
    @RequestMapping(value="/commitAddDoctor", method = RequestMethod.POST)
    public String commitAddDoctor(@ModelAttribute("doctor") Doctor doctor, BindingResult bindingResult){
    	System.out.println("------------------------------------------------------------------------CONTROLLER");

    	if(log.isDebugEnabled()){
    		log.debug("Start Debug");
    	}
    	log.info("Going to Add Patient");
    	
    	employeeManager.addDoctor(doctor);
        
        log.info("Exiting Add Patient");
        return "redirect:/list";
    	
    }
    
    
    
    
}