<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-03-31
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>index</title>
  </head>
  <body>
      随机产生了一个a到z的字母，请猜！
      <%
        //小写字母a-z共26位，a的ASCII码为97
        int num = (int)(Math.random()*26)+97;
        session.setAttribute("count",new Integer(0));
        session.setAttribute("save",new Integer(num));
      %>
  <br><a href="guess.jsp">去猜测这个字母</a>
  </body>
</html>
