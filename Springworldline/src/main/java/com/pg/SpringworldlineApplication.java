package com.pg;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

import com.pg.controller.PaymentGatewayController;

@SpringBootApplication
@ComponentScan(basePackages = "com.pg.controller")
public class SpringworldlineApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(SpringworldlineApplication.class, args);
	}

}
