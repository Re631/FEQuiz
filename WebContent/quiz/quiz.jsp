<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<jsp:include page="../WEB-INF/common/load-meta.html" />
<jsp:include page="../WEB-INF/common/load-css.html" />
<link type="text/css" rel="stylesheet" href="../quiz/css/quiz.css">
<jsp:include page="../WEB-INF/common/load-js.html" />
<script type="text/javascript" src="../quiz/js/quiz.js" defer></script>
<title>クイズ</title>
</head>

<body>
	<jsp:include page="../WEB-INF/common/header.jsp" />

	<div class="content">
		<div class="question-text">
		問題本文
		</div>

		<div class="answer_list">
			<div class="answer-content">
				<label for="answer1" class="answer-label">選択股A</label>
				<input type="radio" id="answer1"  class="answer" name="answer" value="false">
			</div>
			<div class="answer-content">
				<label for="answer2" class="answer-label">選択股B</label>
				<input type="radio" id="answer2"  class="answer" name="answer" value="false">
			</div>
			<div class="answer-content">
				<label for="answer3" class="answer-label">選択股C</label>
				<input type="radio" id="answer3"  class="answer" name="answer" value="false">
			</div>
			<div class="answer-content">
				<label for="answer4" class="answer-label">選択股D</label>
				<input type="radio" id="answer4"  class="answer" name="answer" value="true">
			</div>
		</div>

		<input type="button" id="final-answer" name="final_anser" value="決定">

		<div class="result-content">
			<div class="result">jsでtextをついかする</div>
			<div class="keyword">
				キーワード
			</div>
			<form action="url" method="post">
				<input type="submit" value="次へ">
			</form>
		</div>

		<div class="alert">
			選択肢を選んでください！！
		</div>

	</div>

	<jsp:include page="../WEB-INF/common/footer.jsp" />
</body>

</html>