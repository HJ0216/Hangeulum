package board.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import board.bean.BoardFDTO;
import board.service.FundingService;
import user.bean.UserDTO;

@Controller
@RequestMapping(value = "funding")
public class FundingController {

	@Autowired
	private FundingService fundingService;

	@Autowired
	private BoardFDTO boardFDTO;

	@GetMapping(value = "paymentFForm")
	public String paymentFForm() {
		return "views/funding/paymentFForm";
	}

	@PostMapping(value = "paymentF")
	@ResponseBody
	public BoardFDTO paymentF(@RequestParam String boardFSeq) {
		return fundingService.paymentF(boardFSeq);
	}

	@PostMapping(value = "paymentFGetEmail")
	@ResponseBody
	public UserDTO paymentFGetEmail(@RequestParam String boardFSeq) {
		return fundingService.paymentFGetEmail(boardFSeq);
	}

	@PostMapping(value = "paymentFUserInfo")
	@ResponseBody
	public UserDTO paymentFUserInfo(@RequestParam String userId) {
		return fundingService.paymentFUserInfo(userId);
	}

	@PostMapping(value = "paymentFUpdate")
	@ResponseBody
	public void paymentFUpdate(@RequestParam Map<String, Object> map) {
		fundingService.paymentFUpdate(map);
	}

}
