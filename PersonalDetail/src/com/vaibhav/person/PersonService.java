package com.vaibhav.person;

import java.util.List;  
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonService {
	
	@Autowired
	private PersonRepository repo;
	
	public List<Person > listAll(){
		return (List<Person>) repo.findAll();
	}
	
	public void save(Person person){
		repo.save(person);
	}
	
	public Person get(long id){
		Optional<Person> result = repo.findById(id);
		return result.get();
	}
	
	public void delete(long id){
		repo.deleteById(id);
	}
	
	public List<Person> search(String keyword) {
		return repo.search(keyword);
	}
}
