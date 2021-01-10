package com.example.demo.controller;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.repo.FormBeanEntity;
import com.example.demo.repo.JpaRepositary1;

@Controller
public class JavaController {
	
	@Autowired
	JpaRepositary1 JpaRepositary1 ;
	
	
	@ModelAttribute("formBean")
	public FormBeanEntity formBeannewdoc() {
		return new FormBeanEntity();
	}	
	
	
	 @GetMapping("/public/fmr-frm")
	  public String frontpageGet(HttpSession session) {
	  	  
	  return "index"; 
	  }
	
	
	 @GetMapping("/")
		public String restTest(Model model,HttpSession session)
		{
			session.removeAttribute("fileno");
			//  model.addAttribute("FormBean", new FormBean()); 
			System.out.println("HIIIIIII");
			
			return "index";
		}
		
		
	 @PostMapping(value = "/public/fmr-frm" )
		public String frontpagepost(HttpServletRequest request, HttpServletResponse response, @ModelAttribute FormBeanEntity formBean, BindingResult bindingResult,Model model, HttpSession session,RedirectAttributes redirectAttributes)
		{
			
		 
		 formBean.setFileno(generateString());
		 
			 try {
			 Socket socket = new Socket();
			socket.connect(new InetSocketAddress("google.com", 80));
			System.out.println(socket.getLocalAddress());
			formBean.setIpAddress(socket.getLocalAddress().getHostAddress());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		 try {
			 
			 Socket socket = new Socket();
			 socket.connect(new InetSocketAddress("google.com", 80));
			 System.out.println(socket.getLocalAddress());
			 String ip= socket.getLocalAddress().getLocalHost().getHostAddress();
			 System.out.println(ip+"---------");
			 formBean.setIpAddress(socket.getLocalAddress().getHostAddress());
		} catch (Exception e) {
			
			e.printStackTrace();
			// TODO: handle exception
		} 
		 
		 JpaRepositary1.save(formBean);					
			System.out.println("hello controller--------------------------------------------------");
			redirectAttributes.addFlashAttribute("successMessage","Data Saved SuccessFully..");  
	  
			return "success";
			
		}
	

	 
	 public static String generateString() {
	        String uuid = UUID.randomUUID().toString();
	        uuid.replace("-", "");
	        System.out.println(uuid);
	        return uuid;
	    }
	 
}
