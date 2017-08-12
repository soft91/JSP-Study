<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!public int sum(int a) {
		int sum = 0;
		for (int i = 1; i < 11; i++) {
			sum = sum + i;
		}
		return sum;
	}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1부터 10까지 자연수 합 구하기</h1>
	<%
		int num = Integer.parseInt(request.getParameter("result"));
		for (int i = 1; i < num; i++) {
			out.print(i + "+");
		}
		out.print(num + "=" + sum(num));
	%>

</body>
</html>