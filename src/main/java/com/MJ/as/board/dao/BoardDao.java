package com.MJ.as.board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.MJ.as.board.model.BoardModel;

@Repository
public class BoardDao implements IBoardDao{

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String userid = "scott";
	private String userpw = "tiger";

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	

	@Override
	public BoardModel getBoardContent(int bbsDid) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int boardInsert(BoardModel board) {
		// TODO Auto-generated method stub
		int result = 0;
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userid, userpw);
			String sql = "insert into board (bbsDid, bbsCate, bbsTitle, bbsContent, memMail2, " 
					+ "bbsTag, bbsCnt, bbsId, bbsDt, bbsEdit"
					+ "values (?, ?, ?, ?, ?, ?, ?, ? ,? )";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board.getBbsDid());
			pstmt.setString(2, board.getBbsCate());
			pstmt.setString(3, board.getBbsTitle());
			pstmt.setString(4, board.getBbsContent());
			pstmt.setString(5, board.getBbsTag());
			pstmt.setInt(6, board.getBbsCnt());
			pstmt.setString(7, board.getBbsId());
			pstmt.setString(8, board.getBbsDt());
			pstmt.setString(9, board.getBbsEdit());
			

			result = pstmt.executeUpdate(); // DML (INSERT, UPDATE, DELETE)
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}
	@Override
	public BoardModel boardSelect(BoardModel board) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int boardUpdate(BoardModel board) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int boardDelete(BoardModel board) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int updateViewCnt(int bbsDid) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
