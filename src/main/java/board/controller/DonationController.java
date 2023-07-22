package board.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import board.bean.BoardDDTO;
import board.service.DonationService;


@Controller
@RequestMapping(value="donation")
public class DonationController {

	@Autowired
	private DonationService donationService;
	
	@Autowired
	private BoardDDTO boardDDTO;

	
	
	@GetMapping(value="paymentDForm")
	public String paymentDForm() {
		return "views/donation/paymentDForm";
	}

	@PostMapping(value="paymentD")
	@ResponseBody
	public BoardDDTO paymentD(@RequestParam String bdSeq) {
		return donationService.paymentD(bdSeq);
	}
	
	@PostMapping(value="paymentDUpdate")
	@ResponseBody
	public void paymentDUpdate(@RequestParam Map<String, Object> map){
		donationService.paymentDUpdate(map);
	}
	
	
	

	
	@RequestMapping(value="donation_main", method = RequestMethod.GET)
	public String donation_main() {
		return "views/donation/donation_main";
	}
	
	
	@PostMapping(value = "card_view")
	@ResponseBody
	public List<BoardDDTO> card_view() {
		return donationService.card_view();
	}

/*	
	@PostMapping(value = "totalDonation")
	@ResponseBody
	public Map<String, Object> totalDonation() {
		return donationService.totalDonation();
	}
*/

	@GetMapping("donation_view")
	public String donation_view(@RequestParam String bdseq, Model model) {
		model.addAttribute("bdseq",bdseq);		
		return "views/donation/donation_view";
	}

	
	//3.글작성 
	@RequestMapping(value = "donation_writeForm", method = RequestMethod.GET)
	public String donation_writeForm() {
		return "views/donation/donation_writeForm";
	}

	@PostMapping(value = "dona_write")
	@ResponseBody
	public void fun_write(@ModelAttribute BoardDDTO boardDDTO, MultipartFile file,HttpSession session) throws Exception {
		
		//String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String imgUploadPath=session.getServletContext().getRealPath("/WEB-INF/storage");
		
		System.out.println(imgUploadPath);
		// String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName=null;
		

		if(file != null) {
		   // fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);   
		
			File file2= new File(imgUploadPath,fileName);
		    file.transferTo(file2);
		    boardDDTO.setFileName(fileName);
		} else {
		   // fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		// boardDDTO.setBdImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		// boardDDTO.setBdThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		
		donationService.donationWrite(boardDDTO);
		
	}
	
	
	//4.오늘의 기부 
	@GetMapping("today_donation")
	public String today_donation() {
		return "views/donation/today_donation";
	}
	
	
	@PostMapping(value="boardview_list")
	@ResponseBody
	public BoardDDTO boardview_list(@RequestParam String bdseq) {		
		return donationService.boardview_list(bdseq);	
	}

	
	
	@GetMapping("donationUpdate")
	public String donationUpdate(@RequestParam String bdSeq, Model model) {
		System.out.println(bdSeq);
		model.addAttribute("bdSeq",bdSeq); // param value 전달
		return "views/donation/donationUpdate";
	}

	
	@PostMapping(value="donationUpdateLoad")
	@ResponseBody
	public BoardDDTO donationUpdateLoad(@RequestParam String bdSeq) {		
		return donationService.donationUpdateLoad(bdSeq);	
	}
	
	@PostMapping(value="donationDelete")
	@ResponseBody
	public void donationDelete(@RequestParam String bdSeq) {		
		donationService.donationDelete(bdSeq);	
	}
	
	
}
