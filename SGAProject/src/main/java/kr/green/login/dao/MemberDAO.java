package kr.green.login.dao;

import java.sql.SQLException;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import kr.green.login.vo.MemberVO;

public interface MemberDAO {
	//회원가입 insert
	void welcomeMember(SqlSession sqlSession, MemberVO memberVO) throws SQLException;
	//회원 탈퇴 delete
	void delete(SqlSession sqlSession, int idx) throws SQLException;
	//회원 수정 update
	void updateMember(SqlSession sqlSession, MemberVO memberVO) throws SQLException;
	//비밀번호 찾기(비밀번호 재설정) update
	void updatePassword(SqlSession sqlSession, MemberVO memberVO) throws SQLException;
	//회원정보 가져오기 select
	MemberVO getMember(SqlSession sqlSession, int idx) throws SQLException;
	//아이디 찾기 select
	String findId(SqlSession sqlSession, HashMap<String, String> map) throws SQLException;
	//비밀번호 검사 
	int passwordCheck(SqlSession sqlSession, HashMap<String, String> map) throws SQLException;
	// 아이디 찾기 인증
	int findIdCheck(SqlSession sqlSession, HashMap<String, String> map) throws SQLException;
	// 비밀번호 찾기 인증
	int findPassCheck(SqlSession sqlSession, HashMap<String, String> map) throws SQLException;
	// 닉네임 가져오기
	String memberLogin(SqlSession sqlSession, HashMap<String, String> map) throws SQLException;
	// idx 가져오기
	int selectIdx(SqlSession sqlSession, HashMap<String, String> map) throws SQLException;
}
