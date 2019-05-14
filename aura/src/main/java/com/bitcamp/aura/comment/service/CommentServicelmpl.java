package com.bitcamp.aura.comment.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bitcamp.aura.comment.dao.CommentMapper;
import com.bitcamp.aura.comment.model.CommentFileVO;
import com.bitcamp.aura.comment.model.CommentVO;
import com.bitcamp.aura.review.util.FileUpload;

@Service
@Transactional
public class CommentServicelmpl implements CommentService {
	
	@Autowired
	private CommentMapper commentMapper;
	
	@Override
	public String insert_Comment(MultipartHttpServletRequest comment) {
		List<MultipartFile> fileList = comment.getFiles("files");
		
		for (MultipartFile check : fileList) {
			if (!isValidExtension(check.getOriginalFilename())) {
				return ".gif, .jpg, .png 확장자만 가능합니다.";
			}
		}
		
		String review_Num = comment.getParameter("review_post_num");
		String nickname = comment.getParameter("nickname_post");
		String content = comment.getParameter("comment");
		String grade = comment.getParameter("grade");
		
		File file = new File("");
		
		CommentVO commentVo = new CommentVO();
		CommentFileVO commentFileVO = new CommentFileVO();
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		
		commentVo.setReview_Post_Num(Integer.parseInt(review_Num));
		commentVo.setNickname(nickname);
		commentVo.setComment_Date(sim.format(new Date()));
		commentVo.setComment_Contents(content);
		commentVo.setComment_Score(Integer.parseInt(grade));
		
		commentMapper.insert(commentVo);
		
		for (MultipartFile mf : fileList) {
            String originFileName = mf.getOriginalFilename(); // 원본 파일 명
            
            if (originFileName.equals("")) {	// 파일이 아무것도 안들어왔을 때
            	
            	
            } else { 	// 파일이 들어왔을 때
//              long fileSize = mf.getSize(); // 파일 사이즈를 알고 싶다면 주석을 푸시오
//              System.out.println("fileSize : " + fileSize);
            	
            	String fileName = "/files/" + System.currentTimeMillis() + " " + originFileName;
            	String safeFile = file.getAbsolutePath() + FileUpload.PATH + fileName;
            	
            	commentFileVO.setComment_Num(commentVo.getComment_Num());
            	commentFileVO.setComment_File(fileName);
            	
            	commentMapper.insert_File(commentFileVO);
            	
                try {
                    mf.transferTo(new File(safeFile)); // 파일 저장
                } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            


            
        }
		
		
		return null;
	}
	
	@Override
	public String delete_Comment() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update (CommentVO comment,int type) {
		if(type==1) {
			comment.setComment_Like(comment.getComment_Like()+1);
		}else {
			comment.setComment_Like(comment.getComment_Like()-1);
		}
		commentMapper.update(comment);
	}

	@Override
	public String selectAll_Comment() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<CommentVO> more_Comment(HashMap<String, Object> params) {
		 List<CommentVO> commentVO = commentMapper.moreComment(params);
		 
		 for (CommentVO files : commentVO) {
			 files.setFiles(commentMapper.selectFilesByNum(files.getComment_Num()));
		 }
		 
		return commentVO;
	}

	@Override
	public List<CommentVO> selectAllByNum(int postNum) {
		ArrayList<CommentVO> list = (ArrayList<CommentVO>) commentMapper.selectAllByNum(postNum);

		return list;
	}

	@Override
	public List<CommentFileVO> selectFilesByNum(int num) {
		return commentMapper.selectFilesByNum(num);
	}

	@Override
	public CommentVO selectOne(int comment_Num) {
		CommentVO comment = commentMapper.selectOne(comment_Num);
		return comment;
	}
	
	private boolean isValidExtension(String originalName) {
        String originalNameExtension = originalName.substring(originalName.lastIndexOf(".") + 1);
        switch(originalNameExtension) {
        case "jpg":
        case "png":
        case "gif":
            return true;
        }
        return false;
    }
	
}
