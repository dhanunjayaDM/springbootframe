package net.viralpatel.springbootjspexample;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface paymentgatewayRepository extends CrudRepository<PaymentGateway, Integer> {

}
