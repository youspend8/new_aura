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
@Alias(value="commentVo")
public class CommentVO {
    private int review_post_num;
    private String nickname;
    private String comment_contents;
    private int comment_like;
    private int comment_score;
    private String comment_Date;
    private int comment_num;
}
