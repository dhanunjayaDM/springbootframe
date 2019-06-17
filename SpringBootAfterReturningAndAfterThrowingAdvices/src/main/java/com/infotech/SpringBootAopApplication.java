package com.infotech;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

import com.infotech.model.Account;
import com.infotech.service.impl.AccountService;
import com.infotech.service.impl.AccountServiceImpl;

@SpringBootApplication
@EnableAspectJAutoProxy(proxyTargetClass=true)
public class SpringBootAopApplication {

	public static void main(String[] args)  {
		ConfigurableApplicationContext ctx = SpringApplication.run(SpringBootAopApplication.class, args);
		AccountService accountService = ctx.getBean("accountServiceImpl", AccountServiceImpl.class);
		
		Account account;
		try {
			account = accountService.getAccountByCustomerId("C67669811");
			//account = accountService.getAccountByCustomerId(null);
			if(account != null)
				System.out.println(account.getAccountNumber()+"\t"+account.getAccountDescrption());
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
