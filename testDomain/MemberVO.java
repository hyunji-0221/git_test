package org.ezen.testDomain;


import lombok.Data;

@Data

public class MemberVO {
	
	private int empno;
	private String ename;
	private String job;
	private int mgr;
	private String hireDate;
	private int sal;
	private int comm;
	private int deptno;

}
