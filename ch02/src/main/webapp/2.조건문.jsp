<%@ page contentType="text/html;charset=UTF-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>2.���ǹ�</title>
		<%--
			��¥ : 2024/01/29
			�̸� : ������
			���� : ch02. JSP �⺻
		 --%>
	</head>
	<body>
		<h3>2.���ǹ�</h3>
		
		<h4>if</h4>
		<%
			int num1 = 1;
			int num2 = 2;
			int num3 = 3;
			int num4 = 4;
			
			if(num1 > 0){
				out.println("<p>num1�� 0���� ũ��.</p>");
			}
		%>
		<h4>if ~ else</h4>
		<%
			int var1 = 1, var2 = 2;
		
			if(var1 > var2){
			
		%>	
			<p>var1�� var2���� ũ��.</p>
		<%
			}else{
		
		%>
			<p>var1�� var2���� �۴�.</p>
		<%
			}
		%>
		<h4>if ~ else if ~ else</h4>
		<% int n1 = 1, n2 = 2, n3 = 3, n4 = 4; %>
		<% if(n1 > n2) { %>
			<p>n1�� n2���� ũ��.</p>
		<% }else if(n2 > n3) { %>
			<p>n2�� n3���� ũ��.</p>
		<% }else if(n3 > n4) { %>
			<p>n3�� n4���� ũ��.</p>
		<% }else { %>
			<p>n4�� ���� ũ��.</p>
		<% } %>
		
	</body>
</html>