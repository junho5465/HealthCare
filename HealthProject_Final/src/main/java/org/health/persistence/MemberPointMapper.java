package org.health.persistence;

import org.health.domain.MemberjoinVO;

public interface MemberPointMapper {
	//회원가입2 - 아이디, 포인트, 등급 담아주기
	public void register(MemberjoinVO vo);
}
