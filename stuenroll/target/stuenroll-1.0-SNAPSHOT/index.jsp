<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>

<title>Student-Enroll</title>
</head>
<body>
<body>

<form action="MyServlet" method="post">
<div style="margin-left:150px">
<div style="margin-top:150px">
<table style="background-color:#CCFF33">
<tr>
<td>Student Name : </td><td><input type="text" name="Name"/></td>
</tr>
<tr>
<td>Roll No :</td><td><input type="text" name="RollNo"/></td>
</tr>
<tr>
<td>Date of birth : </td><td><input type="text" name="DOB"/></td>
</tr>
<tr>
<td></td><td><input type="submit" name="Submit" value="Submit"/></td>
</tr>
</table>
</div>
</form>
</body>
</html>
