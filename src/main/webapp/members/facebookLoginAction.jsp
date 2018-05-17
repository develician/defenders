<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.UUID" %><%--
  Created by IntelliJ IDEA.
  User: paul
  Date: 2017. 10. 8.
  Time: PM 5:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
    <title></title>
</head>
<body>


<%


    session.setAttribute("memberID", "facebookUser");
    session.setAttribute("CSRF_TOKEN", UUID.randomUUID().toString());

%>
<script>
    location.href='/home';
</script>
</body>
</html>
