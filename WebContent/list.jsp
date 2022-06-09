<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>

<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	
	//List<PersonVo> personList = (List<PersonVo>)request.getAttribute("pList");
	
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>전화번호부</h1>

	<h2>리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
	
	<c:forEach begin="i=1" end="i<personList.size()" step="i++">
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td>${p.name }</td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td>${p.hp }</td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td>${p.company }</td>
			</tr>
			<tr>
				<td>[수정폼]</td>
				<td><a href="./pbc?action=delete&id=${p.personId }">[삭제]</a></td>
			</tr>
			
		</table>
		<br>
	</c:forEach>	
	
	<a href="./pbc?action=writeForm">추가번호 등록</a>
	
</body>
</html>