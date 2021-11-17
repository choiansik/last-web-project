package com.MJ.as.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MJ.as.member.Member;
import com.MJ.as.member.MemberPhone;
import com.MJ.as.member.dao.MemberDao;

//@Repository, @Component
//@Service("memService") // 자동으로 MemberService 객체가 스프링 컨테이너 담김
@Service
public class MemberService implements IMemberService{
	
	@Autowired
	MemberDao dao;
	
	@Override
	public int memberRegister(Member member) {
		// TODO Auto-generated method stub
		return dao.memberInsert(member);
	}

	@Override
	public Member memberSearch(Member member) {
		// TODO Auto-generated method stub
		return dao.memberSelect(member);
	}

	@Override
	public Member memberModify(Member member) {
		// TODO Auto-generated method stub
		int result = dao.memberUpdate(member);
		if(result == 0) {
			return null;
		}
		return member;
		
	}

	@Override
	public int memberRemove(Member member) {
		// TODO Auto-generated method stub
		return dao.memberDelete(member);
	}

}
