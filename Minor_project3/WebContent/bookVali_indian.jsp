<%@page import="dao.BookDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="book" class="dto.Book" scope="session" ></jsp:useBean>
<jsp:setProperty property="*" name="book"/>
<%

BookDao bd=new BookDao();
int i=bd.book_indian(book);
if(i>0)
{
	response.sendRedirect("MailServlet");
}else{
	response.sendRedirect("hpbookingpage.jsp");
}

%>