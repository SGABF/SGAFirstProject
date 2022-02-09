/**
 * 
 */
package kr.green.login.dao;

import java.sql.SQLException;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import kr.green.login.vo.MemberVO;

/**
 * @author HanKyul
 *
 */
public class MemberDAOImpl implements MemberDAO {
	private static MemberDAO instance = new MemberDAOImpl();
	private MemberDAOImpl() {
		;
	}
	public static MemberDAO getInstance() {
		return instance;
	}
	@Override
	public void welcomeMember(SqlSession sqlSession, MemberVO memberVO) {
		sqlSession.insert("member.welcomeMember", memberVO);
	}
	@Override
	public MemberVO getMember(SqlSession sqlSession, int idx) {
		return sqlSession.selectOne("member.getMember", idx);
	}
	@Override
	public void delete(SqlSession sqlSession, int idx) {
		sqlSession.delete("member.delete", idx);
	}
	@Override
	public void updateMember(SqlSession sqlSession, MemberVO memberVO) {
		sqlSession.update("member.updateMember", memberVO);
	}
	@Override
	public String selectId(SqlSession sqlSession, int idx) {
		return sqlSession.selectOne("member.selectId", idx);
	}
	@Override
	public void updatePassword(SqlSession sqlSession, MemberVO memberVO) {
		sqlSession.update("member.updatePassword", memberVO);
	}
	@Override
	public int passwordCheck(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("member.passwordCheck", map);
	}
	@Override
	public int findIdCheck(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("member.findIdCheck", map);
	}
	@Override
	public int findPassCheck(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("member.findPassCheck", map);
	}
	@Override
	public String memberLogin(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("member.memberLogin", map);
	}
	@Override
	public int selectIdx(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("member.selectIdx", map);
	}
}
