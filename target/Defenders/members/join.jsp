<jsp:include page="../includeFiles/header.jsp"/>


<body>
<script>
    function statusChangeCallback(response) {
        console.log('statusChangeCallback');
        console.log(response);
        if (response.status === 'connected') {
            // 페이스북과 앱에 같이 로그인되어 있다.
            var uid = response.authResponse.userID;
            var accessToken = response.authResponse.accessToken;
            console.log('uid: ' + uid);//사용자 고유값
            console.log('accessToken: ' + accessToken);//권한 체크를 위한 값 일정 기간 마다 변경 됨
            testAPI();
        } else if (response.status === 'not_authorized') {
            // 페이스북에는 로그인 되어있으나, 앱에는 로그인 되어있지 않다.
            document.getElementById('status').innerHTML = 'Please log ' +
                'into this app.';
        } else {
            //  페이스북에 로그인이 되어있지 않아서, 앱에 로그인 되어있는지 불명확하다.
            document.getElementById('status').innerHTML = 'Please log ' +
                'into Facebook.';
        }
    }

    function checkLoginState() {
        FB.getLoginStatus(function (response) {
            statusChangeCallback(response);
        });
    }

    window.fbAsyncInit = function () {
        FB.init({
            appId: '1925498334335211',
            cookie: true,  // enable cookies to allow the server to access
                           // the session
            xfbml: true,  // parse social plugins on this page
            version: 'v2.5' // use graph api version 2.5
        });

        FB.getLoginStatus(function (response) {
            statusChangeCallback(response);
        });

    };

    function FBLogin(){
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    }


    function testAPI() {
        console.log('Welcome!  Fetching your information.... ');
        FB.api('/me', function (response) {
            console.log('Successful login for: ' + response.name);
            document.getElementById('status').innerHTML = 'Thanks for logging in, ' + response.name + '!';
            location.href="/members/facebookLoginAction.jsp";
        });
    }



</script>

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
            <h2 style="text-align: center">Join</h2>

        </div>
        <form action="./joinAction.jsp" method="post">
            <div class="form-group">
                <input type="text" name="memberID" class="form-control" placeholder="Enter ID">
            </div>
            <div class="form-group">
                <input type="password" name="memberPassword" class="form-control" placeholder="Enter Password">
            </div>
            <div class="form-group">
                <input type="password" name="memberPassword2" class="form-control" placeholder="Repeat Password">
            </div>
            <div class="form-group">
                <input type="email" name="memberEmail" class="form-control" placeholder="Enter Email">
            </div>
            <button type="submit" class="btn btn-primary">Join</button>
        </form>
        <br>
    </div>
    <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
    </fb:login-button>
    <button type="button" class="btn btn-primary" onclick="FBLogin()">Join With Facebook</button>
    <div id="status">
    </div>
    <div class="col-sm-2"></div>
</div>

</body>
</html>
