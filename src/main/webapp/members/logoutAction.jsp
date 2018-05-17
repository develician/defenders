<%--
  Created by IntelliJ IDEA.
  User: paul
  Date: 2017. 10. 4.
  Time: PM 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        session.invalidate();
    %>
    <script>
        location.href="/home";
    </script>

</body>
</html>
