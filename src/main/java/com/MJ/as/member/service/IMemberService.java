package com.MJ.as.member.service;

import com.MJ.as.member.Member;
import com.MJ.as.member.MemberPhone;

public interface IMemberService {
	int memberRegister(Member member);
	Member memberSearch(Member member);
	Member memberModify(Member member);
	int memberRemove(Member member);
}
