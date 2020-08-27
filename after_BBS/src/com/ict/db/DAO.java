package com.ict.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
// DB처리하는 클래스
public class DAO {
	private static SqlSession ss;
	
	private synchronized static SqlSession getSession() {
		if (ss == null) {
			ss = DBService.getFactory().openSession(false);
		}
		return ss;
	}
	
	// 전체 게시물의 수 구하기
	public static int getCount() {
		int count = 0;
		count= getSession().selectOne("count");
		return count;
	}
	
	
	
	// 전체 리스트 보기 
	public static List<VO> getList(int begin, int end){
		List<VO> list = null;
		try {
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("begin", begin);
			map.put("end", end);
			list = getSession().selectList("list", map);
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	// 원글 정보 입력
	public static int getInsert(VO vo) {
		int result = 0 ;
		result = getSession().insert("insert", vo);
		ss.commit();
		return result;
	}
}








