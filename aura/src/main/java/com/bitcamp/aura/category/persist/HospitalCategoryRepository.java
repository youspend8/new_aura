package com.bitcamp.aura.category.persist;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bitcamp.aura.category.model.HospitalCategoryVO;

@Repository
public interface HospitalCategoryRepository extends CrudRepository<HospitalCategoryVO, Integer> {

}
