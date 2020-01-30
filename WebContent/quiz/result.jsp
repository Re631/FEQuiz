<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<jsp:include page="../WEB-INF/common/load-meta.html" />
<jsp:include page="../WEB-INF/common/load-css.html" />
<jsp:include page="../WEB-INF/common/load-js.html" />
<title>Insert title here</title>
</head>

<body>
	<jsp:include page="../WEB-INF/common/header.jsp" />

	<div class="content">
		<div class="result-title">結果</div>
		<div class="pass">合格</div>
		<div class="failure">不合格</div>
	</div>

	<jsp:include page="../WEB-INF/common/footer.jsp" />
</body>

</html>