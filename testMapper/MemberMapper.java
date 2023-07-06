package org.ezen.testMapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.ezen.testDomain.MemberVO;

@Mapper
public interface MemberMapper {

	//모든 사원 조회
	@Select("SELECT * FROM EMPTEST")
	public List<MemberVO> getList();
	
	//특정 사원 조회
	@Select("SELECT * FROM EMPTEST WHERE EMPNO=${empno}")
	public MemberVO getListByEmpno(int empno);

	//사원정보 등록
	@Insert("INSERT INTO EMPTEST "
			+ "(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) "
			+ "VALUES (#{empno}, #{ename}, #{job}, #{mgr}, #{hireDate}, #{sal}, #{comm}, #{deptno})")
	public void insert(MemberVO vo);

	//사원정보 삭제
	@Delete("DELETE FROM EMPTEST WHERE EMPNO=#{empno}")
	public int delete(int empno);

	//사원정보 수정
	@Update("UPDATE EMPTEST SET "
			+ "JOB=#{job}, "
			+ "MGR=#{mgr}, "
			+ "SAL=#{sal}, "
			+ "COMM=#{comm}, "
			+ "DEPTNO=#{deptno} "
			+ "WHERE EMPNO=#{empno}")
	public int update (MemberVO member);

}
