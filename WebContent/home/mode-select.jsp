<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<jsp:include page="../WEB-INF/common/load-meta.html" />
<jsp:include page="../WEB-INF/common/load-css.html" />
<jsp:include page="../WEB-INF/common/load-js.html" />
<title>モード選択</title>
<link rel="stylesheet" href="../home/css/mode-select.css">
<script type="text/javascript" src="../home/js/mode-select.js"></script>
</head>

<body>
	<jsp:include page="../WEB-INF/common/header.jsp" />

	<div class="content">
		<div class="mode-list">

			<div class="category mode-link">
				<a href="#">カテゴリー選択</a>
			</div>

			<div class="timeattack mode-link">
				<a href="#">タイムアタック</a>
			</div>

			<div class="score mode-link">
				<a href="#">スコアアタック</a>
			</div>

			<div class="infinity mode-link">
				<a href="#">無限モード</a>
			</div>
		</div>

		<div class="mode-dummy"></div>


	</div>

	<jsp:include page="../WEB-INF/common/footer.jsp" />
</body>

</html>