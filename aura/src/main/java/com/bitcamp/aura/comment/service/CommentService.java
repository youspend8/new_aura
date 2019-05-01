package com.bitcamp.aura.comment.service;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface CommentService {
	public String insert_Comment(MultipartHttpServletRequest comment);
	public String delete_Comment();
	public String update_Comment();
	public String selectAll_Comment();
}
