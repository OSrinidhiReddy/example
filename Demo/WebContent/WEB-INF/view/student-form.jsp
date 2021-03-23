<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
</head>
<body>
   <form:form action="processForm" modelAttribute="student">
   
   First name: <form:input path="firstName"/>
   <br><br>
   
   Last name: <form:input path="lastName"/>
   <br><br>
   
   Country:
   
<form:select path="Country">

      <form:options items="${student.countryOptions}" />

  <%--  <form:option value="BRZ" label="Brazil"/>
   <form:option value="FRN" label="France"/>
   <form:option value="FRU" label="Germany"/>
   <form:option value="INR" label="India"/>
   --%>
   </form:select>
   
   <br><br>
   
   Favorite Language:
    java<form:radiobutton path="favoriteLanguage" value="java"/>
    Python<form:radiobutton path="favoriteLanguage" value="Python"/>
    C<form:radiobutton path="favoriteLanguage" value="C"/>
    SQL<form:radiobutton path="favoriteLanguage" value="SQL"/>
   
   <br><br>
   
   		Operating Systems:
		
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
		MS Windows <form:checkbox path="operatingSystems" value="MS Window" />

		<br><br>
   
   <input type="submit" value="Submit"/>
   
	   
	   </form:form>
   
</body>
</html>