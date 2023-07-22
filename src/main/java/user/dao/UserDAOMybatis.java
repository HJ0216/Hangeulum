package user.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.UserDTO;

@Repository
@Transactional
public class UserDAOMybatis implements UserDAO {
	@Autowired
	private SqlSession sqlsession;	
	
	HttpSession session;
	
	@Override
	public void join(UserDTO userDTO) {
		System.out.println(userDTO.getUserpassword());
		sqlsession.insert("userSQL.join",userDTO);
		System.out.println("회원가입성공");
	}

	@Override
	public UserDTO getUser(String id) {

		return sqlsession.selectOne("userSQL.getUser",id);
	}

	@Override
	public String login(Map<String,String> map) {
		
		
		return sqlsession.selectOne("userSQL.login", map);

		

	}

	@Override
	public String kakaologin(String kakao_email) {
		String userid=sqlsession.selectOne("userSQL.kakaologin",kakao_email);
		
		return userid;

		
	}

	@Override
	public String findIdComplete(Map<String, String> map) {
		String userid = sqlsession.selectOne("userSQL.findIdComplete",map);
		return userid;
	}
}