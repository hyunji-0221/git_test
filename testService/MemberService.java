package org.ezen.testService;

import java.util.List;

import org.ezen.testDomain.MemberVO;

public interface MemberService {
	
	public List<MemberVO> getList();
	public MemberVO getListByEmpno(int empno);
	public void insert(MemberVO vo);
	public int update(MemberVO vo);
	public int delete(int empno);

}
