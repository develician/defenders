<%--
  Created by IntelliJ IDEA.
  User: paul
  Date: 2017. 10. 5.
  Time: PM 5:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="uploads.imageDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
    PrintWriter writer = response.getWriter();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String contents = request.getParameter("contents");
    String memberID = (String)session.getAttribute("memberID");
    out.println(contents);
    System.out.println(contents);
    //System.out.println(contents.split("\"")[1].split("/")[3]);
    //System.out.println(contents.split("\"")[5].split("/")[3]);
    System.out.println(contents.split("\"").length);
    for(int i = 1;i<contents.split("\"").length;i = i + 4){
        System.out.println(contents.split("\"")[i].split("/")[3]);
    }
    if(contents.equals("")){
        writer.println("<script>");
        writer.println("alert('Please Write The Descriptions.');");
        writer.println("history.back()");
        writer.println("</script>");
    }
    else{
        imageDAO DAO = new imageDAO();
        for(int i = 1;i<contents.split("\"").length;i = i + 4){
            int result =  DAO.insertImageDareDevil(contents.split("\"")[i].split("/")[3]);
            if(result == -1){
                writer.println("<script>");
                writer.println("alert('There was some errors. Please Try Again.');");
                writer.println("history.back();");
                writer.println("</script>");
            }
            else{
                writer.println("<script>");
                writer.println("alert('Success');");
                writer.println("location.href='/dareDevil.jsp';");
                writer.println("</script>");
            }
        }
        //         int result = DAO.insertImageJessicaJones(contents);



    }
%>
</body>
</html>
