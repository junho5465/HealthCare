package org.health.service;

import org.health.domain.MemberVO;
import org.health.domain.MemberjoinVO;

public interface MemberService {
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	//사진없는 회원가입
	public void register(MemberVO vo, MemberjoinVO mjv ) throws Exception;
	
	public MemberVO main(String userId);
}
