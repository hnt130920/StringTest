<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students List</title>
</head>
<body>
	<h1> Students List</h1>
	Id       |     First Name		|		Last Name | <br/>
	----------------------------------------------------<br/>
	
	<c:forEach var="student" items="${studentsList}">
		${student.id}	|	${student.fname}	|	${student.lname} </br>
	</c:forEach>
	
<br/>
Above should display the list of students in the system...


<br/>

<h3>Get a Student's Detail </h3>
<form action="getstudentdetails.jsp" method="get">
	Please enter the student ID : <input type = "text" name="id" ize="25"><br/>
	<input type = "submit" value = "Get the Details of this student from this ID ">
</form>


<br/>
<h3> Add a New Student</h3>

<form action="addnewstudent.jsp" method="get">
	Student ID : <input type="text" name = "id" size = "20"> <br/>
	Student First Name : <input type="text" name = "fname" size = "35"> <br/>
	Student Last Name : <input type="text" name = "lname" size = "35"> <br/>
	<br/>
	<input type = "submit" value = "Add this student to the List" />
</form>

</body>
</html>