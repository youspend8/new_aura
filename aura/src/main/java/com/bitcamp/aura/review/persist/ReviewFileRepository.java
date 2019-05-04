package com.bitcamp.aura.review.persist;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bitcamp.aura.review.model.ReviewFileVO;

@Repository
public interface ReviewFileRepository extends CrudRepository<ReviewFileVO, Integer> {

}
