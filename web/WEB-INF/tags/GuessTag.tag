<%@tag pageEncoding="UTF-8" %>
<%@attribute name="ch" required="true" %>
<%@variable name-given="message" scope="AT_END" variable-class="java.lang.String" %>
<%
    String mess = "";
    Integer integer = (Integer)session.getAttribute("save");
    int real = integer.intValue();
    int guess = 96;
    boolean boo = true;
    try {
//      将字符串转为字符，再将字符转为int，便于比较大小
        char c = ch.charAt(0);
        guess=(int)c;
    }catch (Exception e){
        boo = false;
    }
    if (boo){
//        先判断有无开始猜测，再判断猜测值与随机值是否相等
        if (ch=="*"){
            mess = "你还没开始猜测";
        }else if (guess == real){
            int n = ((Integer)session.getAttribute("count")).intValue();
            n =  n+1;
            session.setAttribute("count",new Integer(n));
            mess = "你猜对了，这是第"+n+"次猜测";
        }else if (guess > real){
            int n = ((Integer)session.getAttribute("count")).intValue();
            n =  n+1;
            session.setAttribute("count",new Integer(n));
            mess = "你猜大了，这是第"+n+"次猜测";
        }else if (guess < real){
            int n = ((Integer)session.getAttribute("count")).intValue();
            n =  n+1;
            session.setAttribute("count",new Integer(n));
            mess = "你猜小了，这是第"+n+"次猜测";
        }
        jspContext.setAttribute("message",mess);
    }else
        jspContext.setAttribute("message","请输入你的猜测");
%>