package com.devglan.dao;

import com.devglan.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao extends CrudRepository<User, Long> {
    User findByUsername(String username);

	User findById(Long id);

	void deleteById(long id);
}
