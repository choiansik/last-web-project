package com.MJ.as.board.dao;

import java.util.ArrayList;
import java.util.List;

import com.MJ.as.board.model.BoardModel;
import com.MJ.as.member.Member;


public interface IBoardDao {


	public BoardModel getBoardContent(int bbsDid);
	int boardInsert(BoardModel board);
	BoardModel boardSelect(BoardModel board);
	int boardUpdate(BoardModel board);
	int boardDelete(BoardModel board);
	public int updateViewCnt(int bbsDid) ;

}
