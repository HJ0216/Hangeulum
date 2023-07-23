package user.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import user.bean.UserDTO;

public interface UserDAO {
	public void join(UserDTO userDTO);

	public UserDTO getUser(String id);

	public String login(Map<String, String> map);

	public String kakaologin(String kakao_email);

	public String findIdComplete(Map<String, String> map);

}
