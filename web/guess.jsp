<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-03-31
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="guess" tagdir="/WEB-INF/tags" %>
<html>
    <head>
        <title>guess</title>
    </head>
<body>
    <%
        String string = request.getParameter("guess");
        if (string == null||string.length()==0)
            string = "*";
    %>
    <guess:GuessTag ch="<%=string%>"/>
    当前猜测结果：<%=message%>
    <%
        if (message.startsWith("你猜对了")){
    %>      <br><a href="index.jsp">重新获得随机的小写字母</a>
    <%  }
        else{
    %>      <br>输入你的猜测：
            <form action="" method="post" name="from">
                <input type="text" name="guess">
                <input type="submit" name="submit" value="送出">
            </form>
    <%  }
    %>
</body>
</html>
