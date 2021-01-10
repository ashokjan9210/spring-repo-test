package com.example.demo.repo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;


@Entity
@Table(name="fmr_data_main")
@EnableAutoConfiguration
public class FormBeanEntity implements Serializable  {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	@Id
	@Column(name="file_no",length = 100,updatable=false)
	private String fileno;
	
	@Column(name="firstName",length = 50,updatable=false)
	private String firstname;
	@Column(name="lastName",length = 50,updatable=false)
	private String lastname;
	@Column(name="fatherName",length = 100,updatable=false)
	private String fatherName;
	@Column(name="gender",length = 20,updatable=false)
	private String gender;
	
	//@DateTimeFormat(pattern = "dd/MM/yyyy")
	@JsonFormat(pattern = "dd/MM/yyyy")
	@Column(name="date_birth",updatable=false)
	private Date dob;
	
	@Column(name="applicant_nationality",updatable=false,length=5)
	private String applicantNationality;
	
	@Column(name="birth_city" ,length = 50,updatable=false)
	private String birthCity;
	
	@Column(name="birth_country" ,length = 50,updatable=false)
	private String birthCountry;
	
	@Column(name="permanent_address_type",length = 15,updatable=false)
	private String addTyp;
	@Column(name="address_line1",length = 100,updatable=false)
	private String addressLine1;
	@Column(name="address_line2",length = 100,updatable=false)
	private String addressLine2;	
	@Column(name="address_country" ,length = 50,updatable=false)
	private String addressCountry;
	
	@Column(name="address_state" ,length = 50,updatable=false)
	private String addressState;
	
	@Column(name="address_district" ,length = 50,updatable=false)
	private String addressDistrict;
	
	@Column(name="address_pin",length = 10,updatable=false)
	private String addressPin;
	
	@Column(name="tribes",updatable=false,length=20)
	private String tribes;
	
	@Column(name="occupation",updatable=false,length=20)
	private String occupation;
	
	@Column(name="mark_identity",length = 100,updatable=false)
	private String markIdentity;
	@Column(name="email_id",length = 100,updatable=false)
	private String email;
	
	@Column(name="mobile_number",length=20,updatable=false)
	private String mobile;
	
	@Column(name="aadhar",length = 20,updatable=false)
	private String aadhar;
	
	
	@Column(name="grant_status",length = 5,updatable=false)
	private String grant;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss")
	@Column(name="reg_time")
	private Date regtime = new Date();	
	
	@Column(name="ipaddress",length=100)
	private String ipAddress;

	public String getFileno() {
		return fileno;
	}

	public void setFileno(String fileno) {
		this.fileno = fileno;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getApplicantNationality() {
		return applicantNationality;
	}

	public void setApplicantNationality(String applicantNationality) {
		this.applicantNationality = applicantNationality;
	}

	public String getBirthCity() {
		return birthCity;
	}

	public void setBirthCity(String birthCity) {
		this.birthCity = birthCity;
	}

	public String getBirthCountry() {
		return birthCountry;
	}

	public void setBirthCountry(String birthCountry) {
		this.birthCountry = birthCountry;
	}

	public String getAddTyp() {
		return addTyp;
	}

	public void setAddTyp(String addTyp) {
		this.addTyp = addTyp;
	}

	public String getAddressLine1() {
		return addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	public String getAddressLine2() {
		return addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	public String getAddressCountry() {
		return addressCountry;
	}

	public void setAddressCountry(String addressCountry) {
		this.addressCountry = addressCountry;
	}

	public String getAddressState() {
		return addressState;
	}

	public void setAddressState(String addressState) {
		this.addressState = addressState;
	}

	public String getAddressDistrict() {
		return addressDistrict;
	}

	public void setAddressDistrict(String addressDistrict) {
		this.addressDistrict = addressDistrict;
	}

	public String getAddressPin() {
		return addressPin;
	}

	public void setAddressPin(String addressPin) {
		this.addressPin = addressPin;
	}

	public String getTribes() {
		return tribes;
	}

	public void setTribes(String tribes) {
		this.tribes = tribes;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getMarkIdentity() {
		return markIdentity;
	}

	public void setMarkIdentity(String markIdentity) {
		this.markIdentity = markIdentity;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAadhar() {
		return aadhar;
	}

	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}

	public String getGrant() {
		return grant;
	}

	public void setGrant(String grant) {
		this.grant = grant;
	}

	public Date getRegtime() {
		return regtime;
	}

	public void setRegtime(Date regtime) {
		this.regtime = regtime;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public FormBeanEntity(String fileno, String firstname, String lastname, String fatherName, String gender, Date dob,
			String applicantNationality, String birthCity, String birthCountry, String addTyp, String addressLine1,
			String addressLine2, String addressCountry, String addressState, String addressDistrict, String addressPin,
			String tribes, String occupation, String markIdentity, String email, String mobile, String aadhar,
			String grant, Date regtime, String ipAddress) {
		super();
		this.fileno = fileno;
		this.firstname = firstname;
		this.lastname = lastname;
		this.fatherName = fatherName;
		this.gender = gender;
		this.dob = dob;
		this.applicantNationality = applicantNationality;
		this.birthCity = birthCity;
		this.birthCountry = birthCountry;
		this.addTyp = addTyp;
		this.addressLine1 = addressLine1;
		this.addressLine2 = addressLine2;
		this.addressCountry = addressCountry;
		this.addressState = addressState;
		this.addressDistrict = addressDistrict;
		this.addressPin = addressPin;
		this.tribes = tribes;
		this.occupation = occupation;
		this.markIdentity = markIdentity;
		this.email = email;
		this.mobile = mobile;
		this.aadhar = aadhar;
		this.grant = grant;
		this.regtime = regtime;
		this.ipAddress = ipAddress;
	}

	public FormBeanEntity() {
		super();
	}
	


	
	 
}
