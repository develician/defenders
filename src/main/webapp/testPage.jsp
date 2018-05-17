<%--
  Created by IntelliJ IDEA.
  User: paul
  Date: 2017. 10. 5.
  Time: PM 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="uploads.imageDAO" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        imageDAO DAO = new imageDAO();
        ArrayList<String> srcLists = DAO.getSrcDareDevil();

        for(int i = 0;i<srcLists.size();i++){
            out.println(srcLists.get(i));
            out.println(srcLists.get(i).split("\"")[1].split("/")[3]);
        }
    %>
</body>
</html>
