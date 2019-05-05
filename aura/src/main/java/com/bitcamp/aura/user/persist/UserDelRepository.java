package com.bitcamp.aura.user.persist;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bitcamp.aura.user.model.UserDelVO;

@Repository
public interface UserDelRepository extends CrudRepository<UserDelVO, String> {

}
