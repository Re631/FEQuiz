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
</head>

<body>
	<jsp:include page="../WEB-INF/common/header.jsp" />

	<div class="content">
		<div class="mode-list">
			<a href="#">カテゴリー選択</a>
			<a href="#">無限モード</a>
			<a href="#">タイムアタック</a>
			<a href="#">スコアアタック</a>
		</div>


	</div>

	<jsp:include page="../WEB-INF/common/footer.jsp" />
</body>

</html>