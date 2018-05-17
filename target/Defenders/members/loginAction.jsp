<%--
  Created by IntelliJ IDEA.
  User: paul
  Date: 2017. 10. 4.
  Time: AM 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8");%>
<%@ page import="members.memberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.UUID" %>
<%
    PrintWriter writer = response.getWriter();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%

        String memberID = request.getParameter("memberID");
        String memberPassword = request.getParameter("memberPassword");

        if(memberID.equals("") || memberPassword.equals("")){
            writer.println("<script>");
            writer.println("alert('Please Fill All The Blanks');");
            writer.println("history.back()");
            writer.println("</script>");
        }
        else {
            memberDAO DAO = new memberDAO();
            int result = DAO.login(memberID, memberPassword);
            if(result == -2){
                writer.println("<script>");
                writer.println("alert('DataBase Error');");
                writer.println("history.back()");
                writer.println("</script>");
            }
            else if(result == -1){
                writer.println("<script>");
                writer.println("alert('No Such Id');");
                writer.println("history.back()");
                writer.println("</script>");
            }
            else if(result == 0){
                writer.println("<script>");
                writer.println("alert('Password Incorrect');");
                writer.println("history.back()");
                writer.println("</script>");
            }
            else{
                session.setAttribute("memberID", memberID);
                session.setAttribute("CSRF_TOKEN", UUID.randomUUID().toString());
                writer.println("<script>");
                writer.println("alert('success');");
                writer.println("location.href='/home';");
                writer.println("</script>");
            }
        }
    %>

</body>
</html>
