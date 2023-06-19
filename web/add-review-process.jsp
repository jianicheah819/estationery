<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
    //Getting all the inputs from the admin
    int id = Integer.parseInt(request.getParameter("oid"));
    String pname = request.getParameter("pname");
    String total_price = request.getParameter("total_price");
    String review = request.getParameter("review");
    //Querying to the database
    int updateProduct = DatabaseConnection.insertUpdateFromSqlQuery("update tblreview set name='" + pname + "',total_price='" + total_price + "',review='" + review + "'");
    if (updateProduct > 0) {
        response.sendRedirect("review.jsp");
    } else {
        response.sendRedirect("review.jsp");
    }
%>