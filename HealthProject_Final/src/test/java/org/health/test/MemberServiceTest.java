package org.health.test;

import static org.junit.Assert.assertNotNull;

import org.health.domain.MemberVO;
import org.health.domain.MemberjoinVO;
import org.health.service.MemberService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberServiceTest {
	
	@Setter(onMethod_= {@Autowired})
	private MemberService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	
	@Test
	public void testRegister() throws Exception {
		MemberVO mvo = new MemberVO();
		mvo.setUserId("000");
		mvo.setUserPwd("새로 작성하는 내용");
		mvo.setUserName("newbie");
		mvo.setImg("C:/health/11111-9732-4006-bfa3-c5b2d483f4cd_KakaoTalk_20211227_154525767.jpg");
		
		MemberjoinVO member = new MemberjoinVO();
		member.setUserId("000");
		member.setPoint(200);
		member.setGrade("A");
		service.register(mvo,member);
						
	}
}


// SQL을 테스트 하기 위한 공간