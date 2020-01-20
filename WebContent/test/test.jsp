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
<%

	Object obj = null;
	String hello = "";

	obj = request.getAttribute("hello");
	if(obj != null) hello = obj.toString();
%>

<body>
	<jsp:include page="../WEB-INF/common/header.jsp" />

	<div class="content">
		<%= hello %>
	</div>

	<jsp:include page="../WEB-INF/common/footer.jsp" />
</body>

</html>