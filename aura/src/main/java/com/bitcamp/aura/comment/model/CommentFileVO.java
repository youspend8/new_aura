package com.bitcamp.aura.comment.model;


import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Alias(value="commentFileVo")
public class CommentFileVO {
	private int comment_Num;
	private String comment_File;
}
