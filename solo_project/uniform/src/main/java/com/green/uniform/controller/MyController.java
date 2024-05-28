package com.green.uniform.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.green.uniform.dao.Iuniformdao;
import com.green.uniform.dto.MemberDto;
import com.green.uniform.dto.ProductDto;

@Controller
public class MyController {

	@Autowired
	private Iuniformdao dao;

	@RequestMapping("/")
	public String root(Model model) {

		List<ProductDto> list = dao.productList();

		model.addAttribute("list", list);

		return "index";
	}

	@RequestMapping("/registform")
	public String registform() {

		return "registform";
	}

	@RequestMapping("/regist")
	public String regist(MemberDto member) {

		member.setRole("ROLE_MEMBER");
		dao.regist(member);

		return "loginform";
	}

	@RequestMapping("/loginform")
	public String loginform(Model model) {

		return "loginform";
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest request, @RequestParam("username") String username,
			@RequestParam("userpw") String userpw, Model model) throws Exception {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		MemberDto member = new MemberDto();

		member.setUsername(username);
		member.setUserpw(userpw);

		MemberDto loginMember = dao.login(member);

		if (loginMember != null) {
			session.setAttribute("username", member.getUsername());
			session.setAttribute("role", loginMember.getRole());
			return "index";
		} else {
			model.addAttribute("error", "다시 로그인 해주세요.");
			return "loginform";

		}

	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {

		HttpSession session = request.getSession();

		session.invalidate();

		return "index";
	}

	@RequestMapping("/myPage")
	public String mypage() {

		return "myPage";
	}

	@RequestMapping("/admin")
	public String admin() {

		return "admin";
	}

	@RequestMapping("/cart")
	public String cart() {

		return "cart";
	}

	@RequestMapping("/productRegistForm")
	public String productRegistForm() {

		
		return "productRegistForm";
	}
	

	@RequestMapping("/productRegist")
	public String productRegist(ProductDto product) {

		MultipartFile file = product.getImgName();

		if (!file.isEmpty()) {
			try {
				// 파일 저장 경로 설정
				String uploadDir = "C:/dev/solo_project/uniform/src/main/webapp/resource/img/";

				// 파일 저장
				File uploadFile = new File(uploadDir + file.getOriginalFilename());
				file.transferTo(uploadFile);

				// 파일 이름을 DTO의 imgurl 필드에 설정
				product.setImgurl(file.getOriginalFilename());

			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}

		dao.productRegist(product);

		return "redirect:productList";
	}

	@RequestMapping("/productList")
	public String productList(Model model) {

		List<ProductDto> list = dao.productList();

		model.addAttribute("list", list);

		return "productList";
	}
	
	@RequestMapping("/productUpdateForm")
	public String productUpdateForm(@RequestParam("pcode") int pcode, Model model) {

		model.addAttribute("prod", dao.productGetPcode(pcode));
		
		return "productRegistForm";
	}
	
	@RequestMapping("/productUpdate")
	public String productUpdate(ProductDto product) {
		
		MultipartFile file = product.getImgName();

		if (!file.isEmpty()) {
			try {
				// 파일 저장 경로 설정
				String uploadDir = "C:/dev/solo_project/uniform/src/main/webapp/resource/img/";

				// 파일 저장
				File uploadFile = new File(uploadDir + file.getOriginalFilename());
				file.transferTo(uploadFile);

				// 파일 이름을 DTO의 imgurl 필드에 설정
				product.setImgurl(file.getOriginalFilename());

			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		
		dao.productUpdate(product);
		
		return "redirect:productList";
	}
	
	@RequestMapping("/productDelete")
	public String productDelete(@RequestParam("pcode") int pcode) {
		
		dao.productDelete(pcode);
		
		return "redirect:productList";
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam("pcode") int pcode, Model model) {
		
		model.addAttribute("prod", dao.productGetPcode(pcode));
		
		return "detail";
	}
	
	

}
