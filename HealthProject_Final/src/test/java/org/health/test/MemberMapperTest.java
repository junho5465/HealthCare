package org.health.test;

import org.health.domain.MemberVO;
import org.health.domain.MemberjoinVO;
import org.health.persistence.MemberMapper;
import org.health.persistence.MemberPointMapper;
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
public class MemberMapperTest {
	@Setter(onMethod_= @__({@Autowired}))
	private MemberMapper mapper;
	@Setter(onMethod_= @__({@Autowired}))
	private MemberPointMapper mempointmapper;
	
	
	@Test
	public void testInsert() throws Exception {
		MemberVO member = new MemberVO();
		member.setUserId("abc");
		member.setUserPwd("새로 작성하는 내용");
		member.setUserName("newbie");
		member.setImg("C:/health/11111-9732-4006-bfa3-c5b2d483f4cd_KakaoTalk_20211227_154525767.jpg");
		mapper.register(member);
		log.info(member);
	}
	@Test
	public void testInsert2() throws Exception {
		MemberjoinVO member = new MemberjoinVO();
		member.setUserId("abc");
		member.setPoint(200);
		member.setGrade("A");
		mempointmapper.register(member);
		log.info(member);
	}
	
	
}

// SQL을 테스트 하기 위한 공간