package board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardDDTO;
import board.dao.DonationDAO;

@Service
public class DonationServiceImpl implements DonationService {

	@Autowired
	private DonationDAO donationDAO;
	
	@Autowired
	private BoardDDTO boardDDTO;
	
	@Override
	public BoardDDTO paymentD(String bdSeq) {
		return donationDAO.payemntD(bdSeq);
	}

	@Override
	public void paymentDUpdate(Map<String, Object> map) {
		donationDAO.paymentDUpdate(map);
	}
	
	
	
	@Override
	public void donationWrite(BoardDDTO boardDDTO) {
		donationDAO.donationWrite(boardDDTO);
		
	}


	@Override
	public List<BoardDDTO> card_view() {
		return donationDAO.card_view();
	}


	@Override
	public BoardDDTO boardview_list(String bdseq) {
		
		return donationDAO.boardview_list(bdseq);
	}

	@Override
	public BoardDDTO donationUpdateLoad(String bdSeq) {
		return donationDAO.donationUpdateLoad(bdSeq);
	}

	@Override
	public void donationDelete(String bdSeq) {
		donationDAO.donationDelete(bdSeq);
	}


	

}
