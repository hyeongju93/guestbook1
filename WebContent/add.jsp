<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.guestbookDao" %>
<%@ page import="com.javaex.vo.guestbookVo" %>
<%
int count=0;
request.setCharacterEncoding("UTF-8");
String name=request.getParameter("name");
String password=request.getParameter("pass");
String content=request.getParameter("content");

guestbookVo vo = new guestbookVo(name,password,content);
guestbookDao dao = new guestbookDao();
count=dao.add(vo);

response.sendRedirect("list.jsp");
%>
