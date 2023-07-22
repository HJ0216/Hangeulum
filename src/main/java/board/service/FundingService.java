package board.service;

import java.util.Map;

import board.bean.BoardFDTO;
import user.bean.UserDTO;

public interface FundingService {

	public BoardFDTO paymentF(String boardFSeq);

	public UserDTO paymentFUserInfo(String userId);

	public UserDTO paymentFGetEmail(String boardFSeq);

	public void paymentFUpdate(Map<String, Object> map);

}
