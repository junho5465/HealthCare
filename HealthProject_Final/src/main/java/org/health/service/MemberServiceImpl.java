package org.health.service;

import org.health.domain.MemberVO;
import org.health.domain.MemberjoinVO;
import org.health.persistence.MemberMapper;
import org.health.persistence.MemberPointMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService {
	@Setter(onMethod_ = @Autowired)
	private MemberMapper memmapper;
	@Setter(onMethod_ = @Autowired)
	private MemberPointMapper mempointmapper;

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		log.info("로그인..");
		return memmapper.login(vo);
	}

	@Transactional
	@Override
	public void register(MemberVO vo, MemberjoinVO mjv ) throws Exception {
		log.info("회원가입...");
		log.info(vo);
		memmapper.register(vo);
		mempointmapper.register(mjv);
		
	}
	
	@Override
	public MemberVO main(String userId) {
		MemberVO vo = null;
		vo = memmapper.main(userId);
		return vo;
	}
}
