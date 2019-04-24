package com.bitcamp.aura.reviewlist.persist;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bitcamp.aura.reviewlist.model.ReviewListVO;

@Repository
public interface ReviewListRepository extends CrudRepository<ReviewListVO, Integer> {

}
