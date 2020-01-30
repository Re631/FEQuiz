<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<jsp:include page="../WEB-INF/common/load-meta.html" />
<jsp:include page="../WEB-INF/common/load-css.html" />
<link rel="stylesheet" type="text/css" href="../home/css/home.css">
<jsp:include page="../WEB-INF/common/load-js.html" />
<title>ホーム</title>
</head>

<body>
	<jsp:include page="../WEB-INF/common/header.jsp" />

	<div class="content">
	<table>
		<tr>
		  <td><img src="../home/img/kaeru1.png"></td>
		</tr>
	    <tr>
	      <td><p>ハイ！注目</p></td>
		  <td><p>ようこそ！FE学習サイトへ</p></td>
		  <td><p>ここでは基本情報技術者試験の午前問題がたっぷり用意してあるから満足いくまで解きまくろう！</p></td>
		</tr>
	</table>
		<button class="btn" type="button" onclick="location.href='http://localhost:8080/FEQuiz/quiz/quiz.jsp'">スタート</button>
	</div>

	<jsp:include page="../WEB-INF/common/footer.jsp" />
</body>

</html>
