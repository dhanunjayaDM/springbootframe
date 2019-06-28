package com.pg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.pg.model.PaymentGateway;
import com.pg.service.PaymentGatewayService;
@Controller
public class PaymentGatewayController 
{
//	@Autowired
//	private PaymentGatewayService paymentGatewayService;
	
//	@GetMapping("/new")
//	public String createPgReq(Model model) {
//		model.addAttribute("pg",new PaymentGateway());
//		return "meTrnCardReq";
//	}
//	@PostMapping("/pay")
//	public String PgReq(@ModelAttribute("pg") PaymentGateway paymentGateway) {
//		paymentGatewayService.createPayment(paymentGateway);
//		
//		return "meTrnCardPay";
//	}
	
	@GetMapping("/new")
    public ModelAndView show() {
       // model.addAttribute("pg", new PaymentGateway());
		System.out.println("controller:////////////////////");
        return new ModelAndView("abc");
    }
	
	

}
