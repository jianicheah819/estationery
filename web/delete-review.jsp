<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    int deleteReview = DatabaseConnection.insertUpdateFromSqlQuery("delete from tblorder where review='" + id + "' ");
    if (deleteReview > 0) {
        response.sendRedirect("review.jsp");
    } else {
        response.sendRedirect("review.jsp");
    }
%>