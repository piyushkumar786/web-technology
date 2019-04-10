<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int n=Integer.parseInt(request.getParameter("val"));
for(int i=0;i<=10;i++)
{
	out.print(i*n);
	out.print("<br>");
}

%>
</body>
</html>