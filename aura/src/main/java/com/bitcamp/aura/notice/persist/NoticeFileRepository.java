package com.bitcamp.aura.notice.persist;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bitcamp.aura.notice.model.NoticeFileVO;

@Repository
public interface NoticeFileRepository extends CrudRepository<NoticeFileVO, Integer> {

}
