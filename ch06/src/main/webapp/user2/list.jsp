<%@page import="dto.User2DTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//데이터베이스 작업
	String host = "jdbc:mysql://127.0.0.1:3306/studydb";
	String user = "sunnet123";
	String pass = "abc1234";
	
	List<User2DTO> users = new ArrayList<>();
	

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("SELECT * FROM `User2`");
		
		while(rs.next()){
			User2DTO dto = new User2DTO();
			dto.setUid(rs.getString(1));
			dto.setName(rs.getString(2));
			dto.setBirth(rs.getString(3));
			dto.setAddr(rs.getString(4));
			
			users.add(dto);
		}
		
		rs.close();
		stmt.close();
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>User2:list</title>
	</head>
	<body>
		<h3>User2 목록</h3>
		
		<a href="../1.Jdbc.jsp">처음으로</a>
		<a href="./register.jsp">등록하기</a>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>이름</td>
				<td>생년월일</td>
				<td>주소</td>
				<td>관리</td>
			</tr>
			<% for(User2DTO dto : users){ %>
			<tr>
				<td><%= dto.getUid() %></td>
				<td><%= dto.getName() %></td>
				<td><%= dto.getBirth() %></td>
				<td><%= dto.getAddr() %></td>
				<td>
					<a href="./modify.jsp">수정</a>
					<a href="#">삭제</a>
			</tr>
			<% } %>
		</table>
	</body>
</html>