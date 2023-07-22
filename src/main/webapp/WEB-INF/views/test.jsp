<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>회원가입</h1>

<form id="joinForm" name="joinForm">
아이디
<input type="text" id="userid" name="userid"/>
비밀번호
<input type="password" id="userpassword" name="userpassword" />
이름
<input type="text" id="username" name="username"/>
생일
<input type="text" id="userbirth" name="userbirth"/>
휴대번호
<input type="text" id="userphone" name="userphone"/>
성별
<input type="text" id="gender" name="gender"/>
이메일
<input type="text" id="useremail" name="useremail"/>

<input type="button" value="회원가입" id="joinBtn"/>
<script type="text/javascript" src="/Hangeulum/ckeditor/ckeditor.js"></script>
	<tr><th>내용</th>
		<td><textarea id="content" name="food_content"></textarea>
		<script type="text/javascript">	// 글쓰기 editor 및 사진 업로드 기능
			CKEDITOR.replace('content',
			{filebrowserUploadUrl:'/food/imageUpload.do'
			});
		</script></td>
	</tr>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="../js/userjoin.js"></script>



</body>
</html>