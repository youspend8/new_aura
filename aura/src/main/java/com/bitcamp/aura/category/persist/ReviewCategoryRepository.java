package com.bitcamp.aura.category.persist;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bitcamp.aura.category.model.ReviewCategoryVO;

@Repository
public interface ReviewCategoryRepository extends CrudRepository<ReviewCategoryVO, Integer> {

}
