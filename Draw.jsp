<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Draw JSP</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css"/>
</head>
<body>
	<h1>Hello! This is Liz's CheckerBoard :)</h1>

<div id="container">
		<%
			int width = 0; int height = 0;
			if (request.getParameter("width") != null) {
				width = Integer.parseInt(request.getParameter("width"));
			}
			if (request.getParameter("height") != null) {
				height = Integer.parseInt(request.getParameter("height"));
			}
		%>
		<h1>Checkerboard: <%= width %>w X <%= height %>h</h1>
	<%  if (width == 0 || height == 0) {	%>
	
	 <%  } %>
	<% for(int i = 0; i<height; i++){
		if(i%2 == 0){%>
		<div class="row">
			<%for(int j=0; j<width; j++){
				if(j%2 == 0){%>
					<div class="blue"></div>
				<%} else {%>
					<div class="purple"></div>
				<%}
			}%>
			</div>
		<%} else{%>
			<div class="col">
			<%for(int j=0; j<width; j++){
				if(j%2 == 0){%>
					<div class="purple"></div>
				<%} else {%>
					<div class="blue"></div>
				<%}
			}%>
			</div>
		<%} %>
	<%} %>
	</div>
	

</body>
</html>