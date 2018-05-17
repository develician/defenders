<%@ page import="members.memberDAO" %><%--
  Created by IntelliJ IDEA.
  User: paul
  Date: 2017. 10. 4.
  Time: AM 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="members.memberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>
<%
    PrintWriter print = response.getWriter();
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    memberDAO DAO = new memberDAO();
    String memberID = request.getParameter("memberID");
    String memberPassword = request.getParameter("memberPassword");
    String memberPassword2 = request.getParameter("memberPassword2");
    String memberEmail = request.getParameter("memberEmail");

    if(memberID.equals("") || memberPassword.equals("")|| memberEmail.equals("")){
        print.println("<script>");
        print.println("alert('Please Fill All The Blanks');");
        print.println("history.back()");
        print.println("</script>");
    }
    else if(!memberPassword.equals(memberPassword2)){
        print.println("<script>");
        print.println("alert('Please Check your password.');");
        print.println("history.back()");
        print.println("</script>");
    }
    else if(DAO.emailCheck(memberEmail)){
        print.println("<script>");
        print.println("alert('Email Already Exists, use another email.');");
        print.println("history.back()");
        print.println("</script>");
    }
    else{



        int result = DAO.join(memberID, memberPassword, memberEmail);
        if(result == -1){
            print.println("<script>");
            print.println("alert('ID already exists');");
            print.println("history.back()");
            print.println("</script>");
        }
        else{
            
            print.println("<script>");
            print.println("alert('Success');");
            print.println("location.href='/home'");
            print.println("</script>");
        }
    }

%>

</body>
</html>
