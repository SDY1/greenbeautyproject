package com.cos.greenproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.greenproject.service.BoardService;
import com.cos.greenproject.service.UserService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PageController {
	
	// DI
	private final UserService userService;
	private final BoardService boardService;
	private final HttpSession session;
	
	// <----- Board ----->

	// 리뷰 목록 페이지 이동 (메인페이지)
	@GetMapping("/board")
	public String home() {
		return "board/list";
	}

	// 리뷰 카테고리 페이지 이동
	@GetMapping("/board/category/{categoryId}")
	public String boardCategoryList(@PathVariable int categoryId, Model model) {
		return "board/category";
	}

	// 리뷰 상세 페이지 이동
	@GetMapping("/board/{boardId}/detail")
	public String detail(@PathVariable int boardId, Model model) {
		return "board/detail";
	}

	// 리뷰 작성 페이지 이동
	@GetMapping("/board/saveForm")
	public String saveForm() {
		return "board/saveForm";
	}

	// 리뷰 수정하기 페이지 이동
	@GetMapping("/api/board/{boardId}/updateForm")
	public String boardUpdateForm(@PathVariable int boardId, Model model) {
		return "board/updateForm";
	}
	
	// <----- Item ----->
	
	// 제품 목록 페이지 이동
	@GetMapping("/item/list")
	public String itemList() {
		return "item/list";
	}

	// 제품 카테고리 페이지 이동
	@GetMapping("/item/category/{categoryId}")
	public String itemCategoryList(@PathVariable int categoryId) {
		return "item/list";
	}

	// 제품 상세페이지 이동
	@GetMapping("/item/{id}/detail")
	public String itemDeital() {
		return "item/detail";
	}
	
	// <----- User ----->

	// 회원가입 페이지 이동
	@GetMapping("/joinForm")
	public String join() {
		return "user/joinForm";
	}

	// 로그인 페이지 이동
	@GetMapping("/loginForm")
	public String login() {
		return "user/loginForm";
	}

	// 마이페이지 이동
	@GetMapping("/api/user/{userId}/mypage")
	public String mypage(@PathVariable int userId, String key) {
		return "user/mypage";
	}
	
	// 회원수정 페이지 이동
	@GetMapping("/api/user/{userId}/updateForm")
	public String updateForm(@PathVariable int userId) {
		return "user/updateForm";
	}

}