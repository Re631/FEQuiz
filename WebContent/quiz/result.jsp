<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<jsp:include page="../WEB-INF/common/load-meta.html" />
<jsp:include page="../WEB-INF/common/load-css.html" />
<link type="text/css" rel="stylesheet" href="../quiz/css/result.css">
<jsp:include page="../WEB-INF/common/load-js.html" />
<title>結果画面</title>
</head>

<body>
	<jsp:include page="../WEB-INF/common/header.jsp" />

	<div class="content">
		<div class="result-title">結果</div>
		<div class="result-content">
			<div class="score">正答率:</div>
			<div class="pass">合格</div>
			<div class="failure">不合格</div>
		</div>
	</div>

	<jsp:include page="../WEB-INF/common/footer.jsp" />
</body>

</html>