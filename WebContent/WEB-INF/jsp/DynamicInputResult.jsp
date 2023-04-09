<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dynamic Input Result</title>
<link rel="icon" href="./favicon.ico" sizes="any">
<link rel="stylesheet" href="./css/style.css">
</head>
<body>
	<div class="common-box">
		<h2>someapp | DynamicInputResult.jsp</h2>
		<br>
		<br>
		
		<h3>Input data output</h3>
		<logic:iterate name="resultForm" property="someList" id="sObject">
			<bean:write name="sObject" property="id" />: 
			<bean:write name="sObject" property="name" />
			<br>
		</logic:iterate>
		
	</div>

</body>
</html>