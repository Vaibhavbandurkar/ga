package com.vaibhav.person;

import java.util.List;  
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PersonController {
	
	@Autowired
	private PersonService service;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("index");
		
		List<Person> listPerson = service.listAll();
		
		mav.addObject("listPerson", listPerson);

		return mav;
	}
	
	@RequestMapping("/new")
	public String newPersonForm(Map<String, Object> model) {
		model.put("person", new Person());

		return "new_person";
	}
	
	/*@RequestMapping(value="/save" , method=RequestMethod.POST)
	public String savePerson(@Valid @ModelAttribute("person") Person person , BindingResult result){
		if(result.hasErrors()){
			return "new_person";
		}
		service.save(person);
		return "redirect:/";
	}*/
	
	@RequestMapping(value = "/save" , method = RequestMethod.POST)
	public String savePerson(@ModelAttribute("person") Person person){
		service.save(person);
		
		return "redirect:/";
	}
	
		
	
	@RequestMapping("/edit")
	public ModelAndView editPersonForm(@RequestParam long id){
		ModelAndView mav = new ModelAndView("edit_person");
		Person person = service.get(id);
		mav.addObject("person" , person);
		
		return mav;
		
	}
	
	@RequestMapping("/delete")
	public String deletePerson(@RequestParam long id){
		service.delete(id);
		
		return "redirect:/";
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword){
		ModelAndView mav = new ModelAndView("search");
		List<Person> result = service.search(keyword);
		mav.addObject("result" , result);
		return mav;
		
	}

}
