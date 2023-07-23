package board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import board.bean.BoardDDTO;

@Repository
@Transactional
public class DonationDAOMyBatis implements DonationDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public BoardDDTO payemntD(String bdSeq) {
		int bdSeqInt = Integer.parseInt(bdSeq);
		return sqlSession.selectOne("donationSQL.paymentD", bdSeqInt);
	}

	@Override
	public void paymentDUpdate(Map<String, Object> map) {
		sqlSession.update("donationSQL.paymentDForB", map);
		sqlSession.update("donationSQL.paymentDForU", map);
	}

	@Override
	public void donationWrite(BoardDDTO boardDDTO) {
		System.out.println("===> " + boardDDTO.getBdExpireDate());

		System.out.println(boardDDTO.getFileName());
		boardDDTO.setFileName(boardDDTO.getFileName());
		sqlSession.insert("donationSQL.donationWrite", boardDDTO);

	}

	@Override
	public List<BoardDDTO> card_view() {
		return sqlSession.selectList("donationSQL.card_view");
	}

	@Override
	public BoardDDTO boardview_list(String bdseq) {
		return sqlSession.selectOne("donationSQL.boardview_list", bdseq);
	}

	@Override
	public BoardDDTO donationUpdateLoad(String bdSeq) {
		return sqlSession.selectOne("donationSQL.donationUpdateLoad", bdSeq);
	}

	@Override
	public void donationDelete(String bdSeq) {
		sqlSession.delete("donationSQL.donationDelete", bdSeq);
	}

}
