package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface  JpaRepositary1 extends  JpaRepository<FormBeanEntity, String>  {

	
	

}
