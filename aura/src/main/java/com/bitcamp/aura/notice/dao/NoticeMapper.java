package com.bitcamp.aura.notice.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.aura.notice.model.NoticeVO;

@Mapper
public interface NoticeMapper {
	public int insert(NoticeVO noticevo);
	public int update(NoticeVO noticevo);
	public int delete(int num);
	public List<NoticeVO> selectOne(int num);
	public List<NoticeVO> selectAll();
}
