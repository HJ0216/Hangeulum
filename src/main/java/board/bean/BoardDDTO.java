package board.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component
public class BoardDDTO {
	private int bdSeq;
	private String fileName;
	private String bdExpireDate;
	private String bdSubject;
	// private String bdGoalPercent;
	private String bdGoalAmount;
	private String bdCumulativeAmount;
	// private String bdRealAmount;
	private String bdContent;
	// private String bdIsExpired;
	private String bdTagName;
	private String bdDonaGroup;
	private String bdImg;
	private String bdThumbImg;
	private String categorydona;

}
