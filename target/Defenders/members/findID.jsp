<%@ page import="members.memberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
    PrintWriter writer = response.getWriter();
%>

<jsp:include page="../includeFiles/header.jsp"/>
<body>
<a href="/home">
    <div class="jumbotron" style="border-radius: 10px; margin-left: 10px; margin-right:10px;">
        <h2 style="text-align: center">Marvel Defenders Fan Site</h2>
    </div>
</a>


<div class="container">
    <jsp:include page="../includeFiles/navBar.jsp"/>
    <div class="col-sm-2"></div>
    <div class="col-sm-8">
        <div class="jumbotron">
            <h2 style="text-align: center">Find My ID</h2>

        </div>
        <%
            String result = "";
            String memberPassword = "";
            String memberEmail = request.getParameter("memberEmail");
            if(memberEmail.equals("")){
                writer.println("<script>");
                writer.println("alert('Please Enter Your Email');");
                writer.println("history.back()");
                writer.println("</script>");
            }
            else{
                memberDAO DAO = new memberDAO();
                result = DAO.findID(memberEmail);
                memberPassword = DAO.findPassword(result);
            }
        %>
        <h2>Your ID is <%=result%></h2>
        <h2>Do you want to find your password?</h2>
        <form action="../SendMail.jsp" metho="post">
            <h2>Your Email is : <%=memberEmail%></h2>
                <input type="hidden" name="from" value="<%="dj_hanuel@naver.com"%>"/>
                <input type="hidden" name="to" value="<%=memberEmail%>"/>
                <input type="hidden" name="subject" value="Your Password"/></td></tr>
                <input type="hidden" name="content" value="Your Password is <%=memberPassword%>" />
            <button type="submit" class="btn btn-primary">Send password to your email</button>
        </form>
    </div>
    <div class="col-sm-2"></div>
</div>

</body>
</html>

