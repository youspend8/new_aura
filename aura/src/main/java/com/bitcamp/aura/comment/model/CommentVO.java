package com.bitcamp.aura.comment.model;


import java.util.List;

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
@Alias(value="commentVo")
public class CommentVO {
    private int review_Post_Num;
    private String nickname;
    private String comment_Contents;
    private int comment_Like;
    private int comment_Score;
    private String comment_Date;
    private int comment_Num;
    private String profile;
    private List<CommentFileVO> files;
}
