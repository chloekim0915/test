<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//JSONObject == 자바빈
//JSONArray == List
		String dbUrl="jdbc:mysql://localhost:3306/jspdb";
		//디비유저
		String dbUser="jspid";
		//디비비밀번호
		String dbPass="jsppass";
		Connection con=null;
		PreparedStatement pstmt=null;
		String sql="";
		ResultSet rs=null;

	Class.forName("com.mysql.jdbc.Driver");
	//2단계 디비연결
	con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
	//3
	 sql="select * from member";
	 pstmt=con.prepareStatement(sql);
	 rs=pstmt.executeQuery();
	 //5  rs => 자바빈 저장
	 JSONArray arr=new JSONArray();
	 while(rs.next()){
		 JSONObject jobj=new JSONObject();
		 // setId(rs "id" 열가져오기)
		 jobj.put("id", rs.getString("id"));
		 jobj.put("pass", rs.getString("pass"));
		 jobj.put("name", rs.getString("name"));
	 	 arr.add(jobj);
//1단계 드라이버로더
//2단계 디비연결
//3단계 sql 객체생성 select * from member
//4단계 rs 실행결과 저장
//5단계 rs데이터 있으면 
// 자바빈 객체생성
// 자바빈 변수 <=rs 열 데이터 
// 배열 한칸에 저장
	 }
%>
<%=arr %>


