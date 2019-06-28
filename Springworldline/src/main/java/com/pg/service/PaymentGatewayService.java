package com.pg.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pg.model.PaymentGateway;

@Service
@Transactional
public class PaymentGatewayService {
	@Autowired
	private com.pg.dao.paymentgatewayRepository paymentgatewayRepository;

	public void createPayment(PaymentGateway paymentGateway) {
		
		paymentgatewayRepository.save(paymentGateway);
	}

}
