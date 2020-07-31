package com.ict.edu;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.jsp.tagext.TryCatchFinally;

import org.eclipse.jdt.internal.compiler.ast.TryStatement;

import com.sun.corba.se.pept.transport.Connection;

public class DAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	private static DAO dao = new DAO();
	public static DAO getInstance() {
		return dao;
	}
	
	// 접속 
	public Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			String url= "jdbc:oracle:thin:@localhost:1521:xe";
			String user= "c##won";
			String password= "1111";
		} catch (Exception e) {
		}
		return conn;
	}
	
	//리스트
	public ArrayList<VO> getList() {}
		ArrayList<VO> list = new ArrayList<VO>();
		try {
			conn = getConnection();
			String sql = "select *from guestbook order by idx";
			pstm =  conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			while (rs.next()) {
				VO vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setName(rs.getString("name"));
				vo.setSubject(rs.getString("subject"));
				vo.setContent(rs.getString("content"));
				vo.setEmail(rs.getString("email"));
				vo.setPwd(rs.getString("pwd"));
				vo.setRegdate(rs.getString("regdate"));
				list.add(vo);
			}
		} catch(Exception e) {
		} finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e) {
			}
		}
		return list;
	}

	// 삽입
	public int getInsert(VO vo) {
		int result = 0;
		try {
			conn = getConnection();
			String sql = "insert into guestbook "
					+ " values(guestbook_seq.nextval,?,?,?,?,?,sysdate)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getName());
			pstm.setString(2, vo.getSubject());		
		} catch (Exception e) {
		} finally {
			try {
				
			} catch (Exception e2) {
			}
		}
		return result;
	}


}
