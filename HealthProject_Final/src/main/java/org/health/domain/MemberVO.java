package org.health.domain;

import lombok.Data;

@Data
public class MemberVO {
	private String userId;	//유저 아이디
	private String userPwd;	//유저 패스워드
	private String userName;//유저 이름
	private String img; //유저 프로필 사진 uuid
}
	