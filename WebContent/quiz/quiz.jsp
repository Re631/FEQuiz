<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<jsp:include page="../WEB-INF/common/load-meta.html" />
<jsp:include page="../WEB-INF/common/load-css.html" />
<jsp:include page="../WEB-INF/common/load-js.html" />
<title>クイズ</title>
</head>

<body>
	<jsp:include page="../WEB-INF/common/header.jsp" />
<form  action="" method="post">
	<div class="content">
		<h1>問題</h1>
		<p>デフォルト<br>
			<input type="radio" name="q1" value="はい"> はい
			<input type="radio" name="q1" value="いいえ"> いいえ
		</p>
			
	</div>

	<jsp:include page="../WEB-INF/common/footer.jsp" />
</form>
</body>

</html>