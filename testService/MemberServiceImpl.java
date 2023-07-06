package org.ezen.testService;

import java.util.List;

import org.ezen.testDomain.MemberVO;
import org.ezen.testMapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService{
	@Setter(onMethod_=@Autowired)
	private MemberMapper mapper;
	
	//모든 사원 select에 필요
	@Override
	public List<MemberVO> getList(){
		log.info("mService getList");
		return mapper.getList();
	}
	
	//특정 사원 정보 select에 필요
	@Override
	public MemberVO getListByEmpno(int empno) {
		log.info("mService getListEmpno");
		return mapper.getListByEmpno(empno);
	}
	
	//insert에 필요
	@Transactional
	@Override
	public void insert(MemberVO vo) {
		log.info("mService insert : "+vo);
		mapper.insert(vo);
	}
	
	//update에 필요
	@Override
	public int update(MemberVO vo) {
		log.info("mService modify : "+vo);
		int result = mapper.update(vo);
		return result;
	}
	
	//delete에 필요
	@Override
	public int delete(int empno) {
		log.info("mService delete : "+empno);
		int result = mapper.delete(empno);
		return result;
	}
	
	

}
