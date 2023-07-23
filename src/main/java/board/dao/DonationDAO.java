package board.dao;

import java.util.List;
import java.util.Map;

import board.bean.BoardDDTO;

public interface DonationDAO {

	public BoardDDTO payemntD(String bdSeq);

	public void paymentDUpdate(Map<String, Object> map);

	public void donationWrite(BoardDDTO boardDDTO);

	public List<BoardDDTO> card_view();

	public BoardDDTO boardview_list(String bdseq);

	public BoardDDTO donationUpdateLoad(String bdSeq);

	public void donationDelete(String bdSeq);

}
