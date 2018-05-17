<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    if (session.getAttribute("memberID") == null) {
        PrintWriter writer = response.getWriter();
        writer.println("<script>");
        writer.println("alert('First, you have to login.');");
        writer.println("location.href='/members/login.jsp'");
        writer.println("</script>");
    }
%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
    <meta charset="uft-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Marvel Defenders</title>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/darkly/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-S7YMK1xjUjSpEnF4P8hPUcgjXYLZKK3fQW1j5ObLSl787II9p8RO9XUGehRmKsxd" crossorigin="anonymous">


    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

    <script type="text/javascript">
        /* summernote에서 이미지 업로드시 실행할 함수 */
        function sendFile(file, editor) {
            // 파일 전송을 위한 폼생성
            data = new FormData();
            data.append("uploadFile", file);
            $.ajax({ // ajax를 통해 파일 업로드 처리
                data: data,
                type: "POST",
                url: "./summernote_imageUpload.jsp",
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) { // 처리가 성공할 경우
                    // 에디터에 이미지 출력
                    $(editor).summernote('editor.insertImage', data.url);
                }
            });
        }
    </script>
</head>
<body>
<h1>Upload Images</h1>
<form name="writeForm" action="summernote_insert.jsp" method="post">
    <input type="hidden" name="CSRF_TOKEN" value="<%=session.getAttribute("CSRF_TOKEN")%>">

    <textarea id="summernote" name="contents"></textarea>
    <script>
        $(document).ready(function () {
            $('#summernote').summernote({ // summernote를 사용하기 위한 선언
                height: 400,
                callbacks: { // 콜백을 사용
                    // 이미지를 업로드할 경우 이벤트를 발생
                    onImageUpload: function (files, editor, welEditable) {
                        for (var i = 0; i < files.length; i++) {
                            sendFile(files[i], this);

                        }
                    }
                }
            });
        });
    </script>
    <button type="submit" class="btn btn-primary">Upload</button>
</form>
</body>
</html>
