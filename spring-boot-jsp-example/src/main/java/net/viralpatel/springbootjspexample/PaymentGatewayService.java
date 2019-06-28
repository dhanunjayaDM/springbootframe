package net.viralpatel.springbootjspexample;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
@Transactional
public class PaymentGatewayService {
	@Autowired
	private paymentgatewayRepository paymentgatewayRepository;

	public void createPayment(PaymentGateway paymentGateway) {
		System.out.println("///service:///");
		paymentgatewayRepository.save(paymentGateway);
	}

}
