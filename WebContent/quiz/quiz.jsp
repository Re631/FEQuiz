<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<jsp:include page="../WEB-INF/common/load-meta.html" />
<jsp:include page="../WEB-INF/common/load-css.html" />
<link type="text/css" rel="stylesheet" href="../quiz/css/quiz.css">
<jsp:include page="../WEB-INF/common/load-js.html" />
<title>クイズ</title>
</head>

<body>
	<jsp:include page="../WEB-INF/common/header.jsp" />

	<div class="content">
		問題本文

		<div class="answer_list">
			<input type="radio" class="answer" name="answer" value="true">
			<input type="radio" class="answer" name="answer" value="false">
			<input type="radio" class="answer" name="answer" value="false">
			<input type="radio" class="answer" name="answer" value="false">
		</div>

		<input type="button" name="final_anser" value="決定">

	</div>

	<jsp:include page="../WEB-INF/common/footer.jsp" />
</body>

</html>