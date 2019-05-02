package com.bitcamp.aura.manager.persist;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bitcamp.aura.manager.model.UserDelVO;

@Repository
public interface UserDelRepository extends CrudRepository<UserDelVO, String> {

}
