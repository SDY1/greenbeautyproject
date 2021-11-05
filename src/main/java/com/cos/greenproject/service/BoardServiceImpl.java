package com.cos.greenproject.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.greenproject.domian.board.BoardRepository;
import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.handler.ex.MyNotFoundException;
import com.cos.greenproject.web.dto.BoardSaveDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class BoardServiceImpl implements BoardService {

	private final BoardRepository boardRepository;

	// <----- PageController ----->
	
	// 게시글 목록 보기
	public void boardList() {

	}

	// 게시글 상세보기
	public void boardDetail() {

	}

	// 게시글 수정페이지 이동
	public void moveUpdateForm() {

	}

	// <----- BoardController ----->
	
	// 게시글 등록
	@Transactional(rollbackFor = MyNotFoundException.class)
	public void insertBoard(BoardSaveDto dto, User principal) {
		boardRepository.save(dto.toEntity(principal));
	}
	
	// 게시글 수정
	public void updateBoard() {

	}

	// 게시글 삭제
	public void deleteBoard() {

	}

	// 리뷰 검색하기
	public void searchBoardList() {

	}

	// 리뷰 필터링
	public void filterBoardList() {

	}

	// 리뷰 콤보박스
	public void comboBoardList() {

	}

}
