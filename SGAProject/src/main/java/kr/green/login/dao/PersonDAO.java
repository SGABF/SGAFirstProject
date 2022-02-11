package kr.green.login.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.green.login.vo.PersonVO;

public interface PersonDAO {
	// 저장하기
	void saveBmi(SqlSession sqlSession, PersonVO personVO) throws SQLException; 
	// 가져오기
	List<PersonVO> getBmi(SqlSession sqlSession, int ref) throws SQLException;
	// 삭제하기 
	void deleteBmi(SqlSession sqlSession, int idx) throws SQLException;
	// 전체삭제하기 
	void deleteAllBmi(SqlSession sqlSession, int ref) throws SQLException;
}
