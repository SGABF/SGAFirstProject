/**
 * 
 */
package kr.green.login.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.green.login.vo.PersonVO;

/**
 * @author HanKyul
 *
 */
public class PersonDAOImpl implements PersonDAO {
	private static PersonDAO instance = new PersonDAOImpl();
	private PersonDAOImpl() {
		;
	}
	public static PersonDAO getInstance() {
		return instance;
	}

	@Override
	public void saveBmi(SqlSession sqlSession, PersonVO personVO) {
		sqlSession.insert("person.saveBmi", personVO);
	}

	@Override
	public List<PersonVO> getBmi(SqlSession sqlSession, int ref) {
		return sqlSession.selectList("person.getBmi", ref);
	}
	@Override
	public void deleteBmi(SqlSession sqlSession, int idx) {
		sqlSession.delete("person.deleteBmi", idx);
	}
	@Override
	public void deleteAllBmi(SqlSession sqlSession, int ref) throws SQLException {
		sqlSession.delete("person.deleteAllBmi", ref);
	}

}
