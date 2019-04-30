package com.bitcamp.aura.user.service;

import java.math.BigInteger;
import java.net.Authenticator;
import java.security.SecureRandom;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpSession;

import org.omg.Messaging.SyncScopeHelper;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.bitcamp.aura.user.dao.UserMapper;
import com.bitcamp.aura.user.model.UserVO;
import com.sun.mail.smtp.SMTPSaslAuthenticator;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
    static final String FROM = "rkaasltu@example.com";
    static final String FROMNAME = "All Review";

	@Autowired
	private UserMapper userMapper;

	@Override
	public boolean apiLoginCheck(String userid) {
//		UserVO apiUser = userMapper.selectOneUserid(userid);
//		session.setAttribute("nickname", apiUser.getNickname());
		return userMapper.selectOneUserid(userid) != null ? true : false;
	}
	
	@Override
	public boolean login(HttpSession session, String email, String password) {
		System.out.println("email :"+email);
		System.out.println("password :"+password);
		// TODO Auto-generated method stub
		UserVO originUser = userMapper.selectOneEmail(email);
		if (originUser != null) {
			if (originUser.getPassword().equals(password)) {
				session.setAttribute("nickname", originUser.getNickname());
				session.setAttribute("email", originUser.getEmail());
				System.out.println("닉네임 값:" + session.getAttribute("nickname"));
				System.out.println("AR가입 회원 email:" + session.getAttribute("email"));
				return true;
			}
		}
		return false;
	}

	
	@Override
	public boolean join(@ModelAttribute UserVO userVo, String pwCheck,
			String addr,
			String addr_code,
			String addr_Detail,
			String address) {
		// TODO Auto-generated method stub
		//닉네임이 없으면 password 2개 체크해서 추가
		if (userMapper.selectOne(userVo.getNickname()) == null) {
			if (userVo.getPassword().equals(pwCheck)) {
				
				StringBuilder sb = new StringBuilder();
				StringBuilder Addr_code = sb.append(userVo.getAddr_code()+"\t");
				StringBuilder Addr = sb.append(userVo.getAddr()+"\t");
				StringBuilder Addr_Detail = sb.append(userVo.getAddr_Detail()+"\t");
				
				userVo.setAddress(sb.toString());
				
				userMapper.insert(userVo);
				return true;
			}
		}
		return false;
	}

	@Override
	public void modify(UserVO userVo) {
		// TODO Auto-generated method stub
		userMapper.update(userVo);
	}

	@Override
	public void withdraw(String nickname) {
		// TODO Auto-generated method stub
		userMapper.delete(nickname);
	}

	@Override
	public UserVO getUser(String nickname) {
		// TODO Auto-generated method stub
		return userMapper.selectOne(nickname);
	}

	@Override
	public List<UserVO> getUsers(String nickname) {
		// TODO Auto-generated method stub
		return userMapper.selectMany(nickname);
	}
	@Override
	public UserVO getUser_email(String email) {
		// TODO Auto-generated method stub
		
		return userMapper.selectOneEmail(email);
	}
	@Override
	public List<UserVO> getUsers_email(String email) {
		// TODO Auto-generated method stub
		return userMapper.selectMany(email);
	}

	@Override
	public List<UserVO> getAllUser() {
		// TODO Auto-generated method stub
		return userMapper.selectAll();
	}

	@Override
	public boolean snsLogin(UserVO uservo) {
		//DB 속에 아무것도 같은게 없을떄 true
		if (userMapper.selectOne(uservo.getNickname()) == null || userMapper.selectOne(uservo.getEmail()) == null) {
			userMapper.insert(uservo);
			return true;
		}else {
			
			return false;
		}
	}
	@Override
	public String emailCode(String email) {
		
		 String random_Num = new BigInteger(20, new SecureRandom()).toString();
		//관리자 비밀번호 and 아이디
		 String gmailID = "doyoung5628@gmail.com";
		 String gmailPWD = "dodo5684@@";

		 String host = "smtp.gmail.com";
		 String from = "doyoung5628@gmail.com";
		 String to = email;

		Properties props = System.getProperties();

		props.setProperty("mail.smtp.user", from);
		props.setProperty("mail.smtp.host", host);
		props.setProperty("mail.smtp.port", "587");
		props.setProperty( "mail.smtp.starttls.enable", "true");
		props.put( "mail.smtp.auth", "true");
		
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(gmailID, gmailPWD);
            }
        });
		
		try {
		    MimeMessage msg = new MimeMessage(session);

		    msg.setFrom(new InternetAddress(from));
		    msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		    msg.setSubject("제목 : ALL REVIEW EMAIL CHECK");
		    msg.setText("안녕하세요  ALL Review 입니다. \n 인증번호 => \t"+random_Num +"입니다.");
		    Transport.send(msg);

		} catch (MessagingException e) {
		    e.printStackTrace();
		}
		return random_Num;
	}

}
