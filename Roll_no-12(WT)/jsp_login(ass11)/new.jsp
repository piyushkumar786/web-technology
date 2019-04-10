<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userlogin", "root", "");
Statement st= con.createStatement();
String name=request.getParameter("t1");
String pass=request.getParameter("t2");
st.executeUpdate("insert into user values('"+name+"','"+pass+"')");
ResultSet rs=st.executeQuery("select * from user");
out.print("<h2 align=center>userlogindatabase Database</h2>");
out.print("<table border=1 align=center>");
out.print("<tr><th> UNAME</th><th>PASS</th></tr>");
while(rs.next())
{
out.print("<tr align=center>");
out.print("<td>");
out.print(rs.getString(1));
out.print("</td>");
out.print("<td>");
out.print(rs.getString(2));
out.print("</td>");
out.print("</tr>");
}
%>