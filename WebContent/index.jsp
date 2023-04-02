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
// 表示用データの生成
String[] strArr = { "apple", "banana", "kiwi", "lemon", "melon" };

// 上記データを使ってのリストの生成
List<SomeObject> tmpList = new ArrayList<>();
for (int i = 0; i < strArr.length; i++) {
  SomeObject sObject = new SomeObject();
  sObject.setId(i);
  sObject.setName(strArr[i]);

  tmpList.add(sObject);
}

// 生成したリストをアクションフォームに設定
SomeForm sForm = new SomeForm();
sForm.someList = tmpList;

// リクエストスコープに保存
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

		<h3>コレクションの出力</h3>
		<logic:iterate name="sForm" property="someList" id="sObject">
			<bean:write name="sObject" property="id" />: 
			<bean:write name="sObject" property="name" />
			<br>
		</logic:iterate>
		<br>
		<br>

		<h3>入力フォーム</h3>
		<html:form action="/DynamicInput">

			<logic:iterate name="sForm" property="someList" id="data"
				type="someapp.SomeObject">
				<div class="input-row">
					<span class="the-id"><html:text name="data" property="id" indexed="true" /></span><span class="the-name"><html:text name="data" property="name" indexed="true" /></span>
				</div>
			</logic:iterate>

			<html:submit value="送信" />
		</html:form>
	</div>


</body>
</html>