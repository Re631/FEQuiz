<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.data.Question" %>
<%@ page import="bean.data.Answer" %>

<!DOCTYPE html>
<html>

<head>
<jsp:include page="../WEB-INF/common/load-meta.html" />
<jsp:include page="../WEB-INF/common/load-css.html" />
<link type="text/css" rel="stylesheet" href="../quiz/css/quiz.css">
<jsp:include page="../WEB-INF/common/load-js.html" />
<script type="text/javascript" src="../quiz/js/quiz.js" defer></script>
<title>無限モード</title>
</head>

<%
	Object obj = null;

	Question question = null;
	ArrayList answerList = null;

	obj = request.getAttribute("question");
	if(obj != null) question = (Question)obj;

	obj = request.getAttribute("answerList");
	if(obj != null) answerList = (ArrayList)obj;
%>

<body>
	<jsp:include page="../WEB-INF/common/header.jsp" />

	<div class="content">
		<div class="question-text">
		<%= question.getText() %>
		</div>

		<div class="answer_list">
			<div class="answer-content">
				<label for="answer1" class="answer-label"><%= ((Answer)(answerList.get(0))).getText() %></label>
				<input type="radio" id="answer1"  class="answer" name="answer" value="<%= ((Answer)(answerList.get(0))).isBool() %>">
			</div>
			<div class="answer-content">
				<label for="answer2" class="answer-label"><%= ((Answer)(answerList.get(1))).getText() %></label>
				<input type="radio" id="answer2"  class="answer" name="answer" value="<%= ((Answer)(answerList.get(1))).isBool() %>">
			</div>
			<div class="answer-content">
				<label for="answer3" class="answer-label"><%= ((Answer)(answerList.get(2))).getText() %></label>
				<input type="radio" id="answer3"  class="answer" name="answer" value="<%= ((Answer)(answerList.get(2))).isBool() %>">
			</div>
			<div class="answer-content">
				<label for="answer4" class="answer-label"><%= ((Answer)(answerList.get(3))).getText() %></label>
				<input type="radio" id="answer4"  class="answer" name="answer" value="<%= ((Answer)(answerList.get(3))).isBool() %>">
			</div>
		</div>

		<input type="button" id="final-answer" name="final_anser" value="決定">

		<div class="result-content">
			<div class="result">jsでtextをついかする</div>
			<div class="keyword">
				<%= question.getKeyword() %>
			</div>

			<form action="url" method="post">
				<input type="submit" class="finish rbtn" value="終了">
			</form>

			<form action="http://localhost:8080/FEQuiz/quiz/ModeInfinity" method="post">
				<input type="submit" class="next rbtn" value="次へ">
			</form>
		</div>
		<div class="dummy"></div>

		<div class="alert">
			選択肢を選んでください！！
		</div>
	</div>

	<jsp:include page="../WEB-INF/common/footer.jsp" />
</body>

</html>