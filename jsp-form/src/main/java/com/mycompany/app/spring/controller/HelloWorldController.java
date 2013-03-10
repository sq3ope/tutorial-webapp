package com.mycompany.app.spring.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.app.spring.model.HelloForm;

@Controller
public class HelloWorldController {

	@PersistenceContext
	private EntityManager entityManager;

	@RequestMapping("/")
    public ModelAndView root(HelloForm form, BindingResult bindingResult, Model uiModel) {
		return helloWorld(form, bindingResult, uiModel);
	}

	@RequestMapping("/hello")
    public ModelAndView helloWorld(HelloForm form, BindingResult bindingResult, Model uiModel) {
		entityManager.persist(form);

		if (form.getFirstName() != null) {
			form.setFirstName(form.getFirstName() + "x");
		}

		if (form.getLastName() != null) {
			form.setLastName(form.getLastName() + "x");
		}

        return new ModelAndView("hello", "form", form);
    }

}
