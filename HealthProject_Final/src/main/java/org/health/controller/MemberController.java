package org.health.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.tag.common.fmt.ParseDateSupport;
import org.health.domain.MemberVO;
import org.health.domain.MemberjoinVO;
import org.health.domain.userVO;
import org.health.persistence.userSpecMapper;
import org.health.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/hellth/*")
@Log4j
public class MemberController {
	@Autowired
	private MemberService memservice;
	@Autowired
	private userSpecMapper bm;

	// 설문조사 끝나고 회원가입 창으로
	@PostMapping("/Signup.do")
	public void asdf() {
		log.info("signup..");
	}

	@GetMapping("/Signup")
	public void nbnbnbn() {
		log.info("signup");
	}

	// 회원가입 끝나고 로그인 창으로
	@PostMapping("/Signup")
	public String fileUploadSignup(HttpServletRequest req, MultipartFile[] uploadfile, MemberjoinVO mjv, MemberVO mv,
			RedirectAttributes rttr) throws Exception {
		String uploadFolder = "C:/health"; // 파일 저장되는 경로
		MultipartFile multipartFile = uploadfile[0]; // 단일파일 하기 위해
		UUID uuid = UUID.randomUUID(); // 랜덤 UUID 담기
		String uploadFileName = multipartFile.getOriginalFilename(); // 파일 이름 설정
		uploadFileName = uuid.toString() + "_" + uploadFileName;
		mv.setImg(uploadFileName); // 디비 img컬럼에 dbUploadFileName 넣기
		log.info(mjv.getPoint()); // 포인트 확인용
		log.info(mjv.getGrade()); // 등급 확인용
		log.info("ㅎㅇ" + mv.getImg()); // 이미지 경로+잘 들어왓는지 확인
		File saveFile = new File(uploadFolder, uploadFileName);
		try {
			multipartFile.transferTo(saveFile);
			memservice.register(mv, mjv);
			bm.insertID(req.getParameter("userId"), Double.parseDouble(req.getParameter("height")),
					Double.parseDouble(req.getParameter("weight")));
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		// memservice.register2(mjv);
		return "/hellth/Login";
	}

	// 사진 띄우기 위해,,,,
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName) {
		log.info("fileName : " + fileName);
		File file = new File("c:/health/" + fileName);
		log.info("file : " + file);
		ResponseEntity<byte[]> result = null;
		try {
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			// 적당한 MIME 타입을 헤더에 추가
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

	// 설문지 창으로 가기 위해,,,
	@GetMapping("/survey")
	public String survey() {
		return "/hellth/survey";
	}

	// 로그인 창으로 가기 위해,,
	@GetMapping("/Login")
	public String login() {
		return "/hellth/Login";
	}

	@GetMapping("/main")
	public String main(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		MemberVO member = memservice.main(userId);
		
		if(member == null) {
			return "/hellth/Login";
		}else {
			log.info("=====GET 방식 main======");
			// session.setAttribute("userId", userId);
			userVO userSpec = null;
			String userImg = bm.getImg(userId);
			int check = bm.getNullCheck(userId);
			if (check >= 1) {
				userSpec = bm.getSpec(userId);
				model.addAttribute("userSpec", userSpec);
			}
			double avgHeight = bm.getAvgHeight();
			double avgWeight = bm.getAvgWeight();
			double avgMuscle = bm.getAvgMuscle();
			double avgFat = bm.getAvgFat();
			String userGrade = bm.getGrade(userId);
			model.addAttribute("userImg", userImg);
			model.addAttribute("avgHeight", avgHeight);
			model.addAttribute("avgWeight", avgWeight);
			model.addAttribute("avgMuscle", avgMuscle);
			model.addAttribute("avgFat", avgFat);
			model.addAttribute("userGrade", userGrade);
			model.addAttribute("check", check);
			return "/hellth/main";
		}
		
	}

	// 로그인
	@PostMapping("/main")
	public String login(MemberVO vo, HttpServletRequest req, HttpServletResponse response, Model model)
			throws Exception {
		HttpSession session = req.getSession();
		MemberVO member = memservice.login(vo);
		if (member == null) {
			session.setAttribute("member", null);
			return "/hellth/Login";
		} else {
			session.setAttribute("member", member);
			session.setAttribute("userId", member.getUserId());
			log.info("=====main======");
			String userId = req.getParameter("userId");
			// session.setAttribute("userId", userId);
			userVO userSpec = null;
			String userImg = bm.getImg(userId);
			int check = bm.getNullCheck(userId);
			if (check >= 1) {
				userSpec = bm.getSpec(userId);
				model.addAttribute("userSpec", userSpec);
			}
			double avgHeight = bm.getAvgHeight();
			double avgWeight = bm.getAvgWeight();
			double avgMuscle = bm.getAvgMuscle();
			double avgFat = bm.getAvgFat();
			String userGrade = bm.getGrade(userId);
			model.addAttribute("userImg", userImg);
			model.addAttribute("avgHeight", avgHeight);
			model.addAttribute("avgWeight", avgWeight);
			model.addAttribute("avgMuscle", avgMuscle);
			model.addAttribute("avgFat", avgFat);
			model.addAttribute("userGrade", userGrade);
			model.addAttribute("check", check);
			return "/hellth/main";
		}
	}

	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/hellth/index";
	}

	@GetMapping(("/index"))
	public void index(Model model) {
		log.info("=====index======");
	}
}
