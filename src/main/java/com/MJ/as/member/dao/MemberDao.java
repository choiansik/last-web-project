package com.MJ.as.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

import org.springframework.stereotype.Repository;

import com.MJ.as.member.Member;
import com.MJ.as.member.MemberPhone;

//@Repository, @Component
@Repository // 자동으로 MemberDao 객체가 스프링 컨테이너 담김
public class MemberDao implements IMemberDao {

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String userid = "scott";
	private String userpw = "tiger";

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	@Override
	public int memberInsert(Member member) { // Join
		// TODO Auto-generated method stub
		int result = 0;
			
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userid, userpw);
			String sql = "insert into member (memId, memPw, memName, memMail, memMail2, " 
					+ "memPhone1, memPhone2, memPhone3, memGender, memAddNum,"
					+ " memAddress, memAddress2, memAddPlus) "
					+ "values (?, ?, ?, ?, ?, ?, ?, ? ,? ,? ,?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemId());
			pstmt.setString(2, member.getMemPw());
			pstmt.setString(3, member.getMemName());
			pstmt.setString(4, member.getMemMail());
			pstmt.setString(5, member.getMemMail2());
			pstmt.setString(6, member.getMemPhone1());
			pstmt.setString(7, member.getMemPhone2());
			pstmt.setString(8, member.getMemPhone3());
			pstmt.setString(9, member.getMemGender());
			pstmt.setString(10, member.getMemAddNum());
			pstmt.setString(11, member.getMemAddress());
			pstmt.setString(12, member.getMemAddress2());			
			pstmt.setString(13, member.getMemAddPlus());

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
	public Member memberSelect(Member member) { // Login (id, pwd)
		// TODO Auto-generated method stub
		Member mem = null;

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userid, userpw);
			String sql = "select * from member where memId = ? and memPw = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemId());
			pstmt.setString(2, member.getMemPw());

			rs = pstmt.executeQuery(); 
			// 결과행의 개수는 무조건 1개 (id 중복 불가, primary key) / 0개
			
			while(rs.next()) { // 결과행이 있으면
				String memId = rs.getString("memId"); // primary key
				String memPw = rs.getString("memPw");
				String memName = rs.getString("memName");
				String memMail = rs.getString("memMail");
				String memMail2 = rs.getString("memMail2");
				String memPhone1 = rs.getString("memPhone1");
				String memPhone2 = rs.getString("memPhone2");
				String memPhone3 = rs.getString("memPhone3");
				String memGender = rs.getString("memGender");
				String memAddNum = rs.getString("memAddNum");
				String memAddress = rs.getString("memAddress");
				String memAddress2 = rs.getString("memAddress2");
				String memAddPlus = rs.getString("memAddPlus");
				
				
				mem = new Member();
				mem.setMemId(memId);
				mem.setMemPw(memPw);
				mem.setMemName(memName);
				mem.setMemMail(memMail);
				mem.setMemMail2(memMail2);
				mem.setMemPhone1(memPhone1);
				mem.setMemPhone2(memPhone2);
				mem.setMemPhone3(memPhone3);
				mem.setMemGender(memGender);
				mem.setMemAddNum(memAddNum);
				mem.setMemAddress(memAddress);
				mem.setMemAddress2(memAddress2);
				mem.setMemAddPlus(memAddPlus);
				
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return mem;
	}

	@Override
	public int memberUpdate(Member member) { // modify
		// TODO Auto-generated method stub
		int result = 0;

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userid, userpw);
			
			String sql = "update member set memPw = ?, memMail = ?, memMail2 = ?,"
					+ "memPhone1 = ?, memPhone2 = ?, memPhone3 = ? , memGender = ?,"
					+ "memAddNum = ?, memAddress = ?, memAddress2 = ?, memAddPlus = ? where memId = ? and memName = ?";
				
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getMemPw());
			pstmt.setString(2, member.getMemMail());
			pstmt.setString(3, member.getMemMail2());
			pstmt.setString(4, member.getMemPhone1());
			pstmt.setString(5, member.getMemPhone2());
			pstmt.setString(6, member.getMemPhone3());
			pstmt.setString(7, member.getMemGender());
			pstmt.setString(8, member.getMemAddNum());
			pstmt.setString(9, member.getMemAddress());
			pstmt.setString(10, member.getMemAddress2());			
			pstmt.setString(11, member.getMemAddPlus());
			pstmt.setString(12, member.getMemId());
			pstmt.setString(13, member.getMemName());
			
			result = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)	pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;

	}

	@Override
	public int memberDelete(Member member) {
		// TODO Auto-generated method stub
		int result = 0;

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userid, userpw);
			String sql = "delete member where memId = ? and memPw = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemId());
			pstmt.setString(2, member.getMemPw());

			result = pstmt.executeUpdate();
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
	
	
}
