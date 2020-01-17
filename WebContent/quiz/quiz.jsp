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
			<p><input type="text" name="c1" value="テキスト入力欄"></p>

			<applet code="FileListing.jar"></applet>
			
	<table  align="center" valign="middle">
		<tr>
			<td><a href="http://localhost:8080/FEQuiz/home/finish.jsp"><h1>次</h1></a></td>
		</tr>
	</table>
	</div>

	<jsp:include page="../WEB-INF/common/footer.jsp" />
</form>
</body>

</html>