package com.vaibhav.person;

import java.util.List; 

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface PersonRepository extends CrudRepository<Person, Long>{

	
	
	@Query(value = "SELECT c FROM Person c WHERE c.firstName LIKE '%' || :keyword || '%' " 
			+ " OR c.lastName LIKE '%' || :keyword || '%' " 
			+ " OR c.email LIKE '%' || :keyword || '%' "
			/*+ " OR c.birthDate LIKE '%' || :keyword || '%' "*/
			+ " OR c.companyName LIKE '%' || :keyword || '%' "
			+ " OR c.address LIKE '%' || :keyword || '%' "
			+ " OR c.city LIKE '%' || :keyword || '%' "
			+ " OR c.gender LIKE '%' || :keyword || '%' "
			+ " OR c.contactNumber LIKE '%' || :keyword || '%' ")
			public List<Person> search(@Param("keyword") String keyword);
	
}
