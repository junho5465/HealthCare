package org.health.persistence;

import org.health.domain.MemberVO;
import org.health.domain.MemberjoinVO;

public interface MemberMapper {
	//회원가입1 - 아이디, 비밀번호, 이름 담아주기
	public void register(MemberVO vo) throws Exception;
	//로그인 - 아이디 ,비밀번호, 이름 세션에 담아줄 수 있삼
	public MemberVO login(MemberVO vo) throws Exception;
	
	public MemberVO main(String userId);
}
