package com.MJ.as.member.dao;

import com.MJ.as.member.Member;
import com.MJ.as.member.MemberPhone;

public interface IMemberDao {
	int memberInsert(Member member);
	Member memberSelect(Member member);
	int memberUpdate(Member member);
	int memberDelete(Member member);
}
