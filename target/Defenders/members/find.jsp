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
        <form action="./findID.jsp" method="post">
            <div class="form-group">
                <input type="email" name="memberEmail" class="form-control" placeholder="Enter Email">
            </div>

            <button type="submit" class="btn btn-primary">Find</button>
        </form>
    </div>
    <div class="col-sm-2"></div>
</div>

</body>
</html>
