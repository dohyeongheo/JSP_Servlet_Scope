<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>������ ���� �ǽ�</h1>
	<%
	p

	// 1. Scope�� ���� �ֱ�
	// ���� �ִ� �޼ҵ� setAttribute(name,value)

	// page scope
	pageContext.setAttribute("page", "������ �������Դϴ�.");

	// request scope
	request.setAttribute("request", "������Ʈ �������Դϴ�.");

	// session scope
	session.setAttribute("session", "���� �������Դϴ�.");

	// application scope
	application.setAttribute("application", "���ø����̼� �������Դϴ�.");

	// 2. Scope �������� �� ��������
	// �ٿ�ĳ���� �ʿ�
	String pageS = (String) pageContext.getAttribute("page");
	String requestS = (String) request.getAttribute("request");
	String sessionS = (String) session.getAttribute("session");
	String applicationS = (String) application.getAttribute("application");

	out.print(pageS + "<br>");
	out.print(requestS + "<br>");
	out.print(sessionS + "<br>");
	out.print(applicationS + "<br>");

	// ������ �̵�

	// 1. sendRedirect() �̿�
	// response.sendRedirect("ex02selectScope.jsp");
	// sendRedirect ��� page, request null �� ���� ��ȭ
	// sendRedirect ��� : �������� �̵��ϸ鼭 setAttribute ���� ���ư����� (������, ������Ʈ)
	// url �����, ������ �������� �ʴ´�.

	// 2. forward() �̿� 
	// forward() --> ������ ������� RequestDispatcher ��ü �ʿ�
	// request.getRequestDispatcher("�̵��� ���");
	RequestDispatcher rd = request.getRequestDispatcher("ex02selectScope.jsp");
	rd.forward(request, response);
	// url ������� ����, request�� response ������ ����
	// ������ ������ �������� ����
	%>


</body>
</html>