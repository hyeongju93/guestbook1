<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.guestbookDao" %>
<%@ page import="com.javaex.vo.guestbookVo" %>
<%



int count=0;
request.setCharacterEncoding("UTF-8");
String password=request.getParameter("pass");
String no=request.getParameter("id");


guestbookVo vo = new guestbookVo(no,password);
guestbookDao dao = new guestbookDao();
count=dao.sub(vo);	//여기가 문제

response.sendRedirect("list.jsp");
%>
