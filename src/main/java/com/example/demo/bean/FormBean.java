package com.example.demo.bean;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FormBean implements Serializable {
	
	
	private static final long serialVersionUID = 1L;
	
	private String fileno;	
	private String firstname;
	private String lastname;
	private String fatherName;
	private String gender;
	private String dob;
	private String applicantNationality;
	private String birthCity;
	private String birthCountry;
	
	private String addTyp;
	private String addressLine1;
	private String addressLine2;
	private String addressCountry;
	private String addressState;
	private String maddressState;
	
	private String addressDistrict;
	private String maddressDistrict;
	
	private String addressPin;
	private String tribes;
	private String occupation;
	private String markIdentity;
	
	private String isd;
	private String email;
	private String mobile;
	private String aadhar;
	
	
	private String placeIntended;
	private String purposeofVisit;
	private String currency;
	private String amount;
	private String merchandise;
	private String forInwrdJrnyDate;	
	private String forInwrdJrny;
	private String forDnwrdJrnyDate;
	private String forDwnrdJrny;
	
	
	private String emrgncyPerson;
	private String emrgncyContact;
	
	private String emIsd;
	private String emaddTyp;
	
	private String emaddressLine1;
	private String emaddressLine2;
	private String emaddressCountry;
	private String emaddressState;
	private String emaddressDistrict;
	
	private String emaddressStatem;
	private String emaddressDistrictm;
	
	private String emaddressPin;
	
	
	private String modeOfTransport;
	private String entryPoint;
	private String exitPoint;
	private String criminal;
	private String cirminalCaseDetail;	
	
	private String localPerson1;
	private String localPerson1Mob;
	
	private String fstIsd;
	private String refaddTyp;
	private String faddressLine1;
	private String faddressLine2;
	private String faddressCountry;
	
	private String faddressState;
	private String fmraddressState;
	private String fmraddressDistrict;
	private String faddressDistrict;
	private String faddressPin;
	
	
	private String localPerson2;
	private String localPerson2Mob;
	private String sndIsd;
	private String saddressLine1;
	private String saddressLine2;
	private String saddressCountry;
	private String saddressState;
	private String saddressDistrict;
	private String saddressPin;
	
	private String smraddressState;
	private String smraddressDistrict;
	
	
	
	private String vilCheifName;
	private String vilCheifMob;	
	private String vilIsd;
	
	
	private String mynVisitTyp;
	private String mynPrsnName;
	private String mynPrsnMob;
	private String mynaddressLine1;
	private String mynaddressLine2;
	private String mynaddressCountry;
	private String mynaddressState;
	private String mynaddressDistrict;
	private String mynaddressPin;
	
	private String mnyIsd;
	private String mynraddressState;
	private String mynraddressDistrict;
	
		
	private String partially="N";
	
	//for partial repeat form
	private String captcha;
	 
	 //preview image
	private String imageview;
		
	private String signview;
	 
	
	
	 ///for visit details hidden feild
	 
	 private String count;
	

}
