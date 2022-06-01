package com.ian.media.dao;

import java.util.List;
import java.util.Map;

import com.ian.media.model.Member;

public interface MemberMapper extends BaseDao<Member, String>{
	
	public List<Member> tjjobTitleUsers(Map map);
	
	public List<Member> tjhospitalNameUsers(Map map);
	
	int updateStateByKey(Member record);
}