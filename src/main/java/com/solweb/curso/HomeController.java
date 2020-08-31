package com.solweb.curso;
import java.util.ArrayList;

import java.util.Locale;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		 String cursos[]={"Ingenieria","Derecho","Contabilidad","Arquitectura","Idiomas","Minas"};
 		 String cursoAgregado =cursos[new Random().nextInt(cursos.length)];
 			
 		String[] inge= {"Ingenieria 1,Ingenieria 2,Ingenieria 3"};
 		String[] derecho= {"Derecho 1,Derecho 2,Derecho 3"};
 		String[] contablidad= {"Contabilidad 1,Contabilidad 2,Contabilidad 3"};
 		String[] Arquitectura= {"Arquitectura 1,Arquitectura 2,Arquitectura 3"};
 		String[] Idiomas= {"Idiomas 1,Idiomas 2,Idiomas 3"};
 		String[] Minas= {"Minas 1,Minas 2,Minas 3"};
 		 
 		 
		model.addAttribute("Carrera", cursoAgregado);
		model.addAttribute("ingenieria", inge);
		model.addAttribute("der", derecho);
		model.addAttribute("conta", contablidad);
		model.addAttribute("arqui", Arquitectura);
		model.addAttribute("idio", Idiomas);
		model.addAttribute("min", Minas);

		
		return "home";
	}
	
}
