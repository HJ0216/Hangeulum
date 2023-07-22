package board.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import board.bean.BoardFDTO;
import user.bean.UserDTO;

@Repository
@Transactional
public class FundingDAOMyBatis implements FundingDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public BoardFDTO paymentF(String boardFSeq) {
		int boardFSeqInt = Integer.parseInt(boardFSeq);
		return sqlSession.selectOne("fundingSQL.paymentF", boardFSeqInt);
	}

	@Override
	public UserDTO paymentFUserInfo(String userId) {
		return sqlSession.selectOne("fundingSQL.paymentFUserInfo", userId);
	}

	@Override
	public UserDTO paymentFGetEmail(String boardFSeq) {
		int boardFSeqInt = Integer.parseInt(boardFSeq);
		return sqlSession.selectOne("fundingSQL.paymentFGetEmail", boardFSeqInt);
	}


	@Override
	public void paymentFUpdate(Map<String, Object> map) {
		sqlSession.update("fundingSQL.paymentFUpdateForB", map);
		sqlSession.update("fundingSQL.paymentFUpdateForU", map);
	}

}
