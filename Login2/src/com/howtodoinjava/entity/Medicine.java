package com.howtodoinjava.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="tbl_medicine")
public class Medicine {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int medicineId;

	private String medicineDescription, cureFor, manufacturingCompany, prescribedFor;
	private double dosage;
	private int amount;
	
	public int getMedicineId() {
		return medicineId;
	}
	public void setMedicineId(int medicineId) {
		this.medicineId = medicineId;
	}
	public String getMedicineDescription() {
		return medicineDescription;
	}
	public void setMedicineDescription(String medicineDescription) {
		this.medicineDescription = medicineDescription;
	}
	public String getCureFor() {
		return cureFor;
	}
	public void setCureFor(String cureFor) {
		this.cureFor = cureFor;
	}
	public String getManufacturingCompany() {
		return manufacturingCompany;
	}
	
	
	public double getDosage() {
		return dosage;
	}
	public void setDosage(double dosage) {
		this.dosage = dosage;
	}
	public void setManufacturingCompany(String manufacturingCompany) {
		this.manufacturingCompany = manufacturingCompany;
	}
	public String getPrescribedFor() {
		return prescribedFor;
	}
	public void setPrescribedFor(String prescribedFor) {
		this.prescribedFor = prescribedFor;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
	
}
