package board.bean;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class FundingDTO {
	private int boardFSeq;
	private String userId;
	private String fileName;
	
	private String boardFExpireDate;
	private String boardFIsExpired;
	private String boardFGoalPercet;
	private String boardFGoalAmount;
	private String boardFRealAmount;
	private String boardFContent;
	
	private Date boardFSendDate;
	private int boardFTotRewardCnt;
	private int boardFSoldRewardCount;
}
