<jsp:include page="../includeFiles/header.jsp"/>
<%@ page import="members.memberDAO" %>
<body>
<a href="/home">
    <div class="jumbotron" style="border-radius: 10px; margin-left: 10px; margin-right:10px;">
        <h2 style="text-align: center">Marvel Defenders Fan Site</h2>
    </div>
</a>

<%
    String memberID = (String)session.getAttribute("memberID");
    memberDAO DAO = new memberDAO();
%>

<div class="container">
    <jsp:include page="../includeFiles/navBar.jsp"/>
    <div class="col-sm-2"></div>
    <div class="col-sm-8">
        <div class="jumbotron">
            <h2 style="text-align: center">Account Management</h2>

        </div>
        <form action="./updateAction.jsp" method="post">
            <h3>ID</h3>
            <p><%=DAO.management(memberID).get(0)%></p>
            <h3>Password</h3>
            <input type="hidden" name="memberID" value="<%=DAO.management(memberID).get(0)%>">
            <div class="form-group">
                <input type="password" name="memberPassword" class="form-control"
                       value = "<%=DAO.management(memberID).get(1)%>" placeholder="Enter Password">
            </div>
            <h3>Email</h3>
            <div class="form-group">
                <input type="email" name="memberEmail" class="form-control"
                       value="<%=DAO.management(memberID).get(2)%>"placeholder="Enter Email">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
    <div class="col-sm-2"></div>
</div>

</body>
</html>
