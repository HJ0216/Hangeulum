package board.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardFDTO;
import board.dao.FundingDAO;
import user.bean.UserDTO;

@Service
public class FundingServiceImpl implements FundingService {

	@Autowired
	private FundingDAO fundingDAO;

	@Autowired
	private BoardFDTO boardFDTO;

	@Override
	public BoardFDTO paymentF(String boardFSeq) {
		return fundingDAO.paymentF(boardFSeq);
	}

	@Override
	public UserDTO paymentFUserInfo(String userId) {
		return fundingDAO.paymentFUserInfo(userId);
	}

	@Override
	public UserDTO paymentFGetEmail(String boardFSeq) {
		return fundingDAO.paymentFGetEmail(boardFSeq);
	}

	@Override
	public void paymentFUpdate(Map<String, Object> map) {
		fundingDAO.paymentFUpdate(map);
	}

}
