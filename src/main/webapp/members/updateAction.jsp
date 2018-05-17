<%--
  Created by IntelliJ IDEA.
  User: paul
  Date: 2017. 10. 4.
  Time: PM 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="members.memberDAO"%>
<%@ page import="java.io.PrintWriter" %>
<%
    request.setCharacterEncoding("UTF-8");
    PrintWriter writer = response.getWriter();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String memberPassword = request.getParameter("memberPassword");
    String memberEmail = request.getParameter("memberEmail");
    String memberID = request.getParameter("memberID");


    if(memberPassword.equals("") || memberEmail.equals("")){
        writer.println("<script>");
        writer.println("alert('Please Fill All The Blanks');");
        writer.println("history.back()");
        writer.println("</script>");
    }
    else{
        memberDAO DAO = new memberDAO();
        int result = DAO.update(memberPassword, memberEmail, memberID);
        if(result == -1){
            writer.println("<script>");
            writer.println("alert('DataBase Error');");
            writer.println("history.back()");
            writer.println("</script>");
        }
        else{
            writer.println("<script>");
            writer.println("alert('Success');");
            writer.println("location.href='/home';");
            writer.println("</script>");
        }
    }
%>
</body>
</html>
