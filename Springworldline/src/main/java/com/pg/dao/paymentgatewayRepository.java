package com.pg.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.pg.model.PaymentGateway;
@Repository
public interface paymentgatewayRepository extends CrudRepository<PaymentGateway, Integer> {

}
