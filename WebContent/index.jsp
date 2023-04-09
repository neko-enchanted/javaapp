<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="someapp.SomeForm"%>
<%@ page import="someapp.SomeObject"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%
// Generation of data for display
String[] strArr = { "apple", "banana", "kiwi", "lemon", "melon" };

// Generate listings using the above data
List<SomeObject> tmpList = new ArrayList<>();
for (int i = 0; i < strArr.length; i++) {
  SomeObject sObject = new SomeObject();
  sObject.setId(i);
  sObject.setName(strArr[i]);

  tmpList.add(sObject);
}

// Set the generated list in the action form
SomeForm sForm = new SomeForm();
sForm.someList = tmpList;

// Save to Request Scope
request.setAttribute("sForm", sForm);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dynamic input form</title>
<link rel="icon" href="./favicon.ico" sizes="any">
<link rel="stylesheet" href="./css/style.css">
</head>
<body>
	<div class="common-box">
		<h2>someapp | index.jsp</h2>
		<br>
		<br>

		<h3>Collection Output</h3>
		<logic:iterate name="sForm" property="someList" id="sObject">
			<bean:write name="sObject" property="id" />: 
			<bean:write name="sObject" property="name" />
			<br>
		</logic:iterate>
		<br>
		<br>

		<h3>Input Form</h3>
		<html:form action="/DynamicInput">

			<logic:iterate name="sForm" property="someList" id="data"
				type="someapp.SomeObject">
				<div class="input-row">
					<span class="the-id"><html:text name="data" property="id" indexed="true" /></span><span class="the-name"><html:text name="data" property="name" indexed="true" /></span>
				</div>
			</logic:iterate>

			<html:submit value="Submit" />
		</html:form>
	</div>


</body>
</html>