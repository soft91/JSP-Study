<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkfield() {

		if (document.addjoin.name.value == "") { //id값이 없을 경우
			alert("이름을 입력하세요"); //메세지 경고창을 띄운 후
			document.addjoin.name.focus(); // id 텍스트박스에 커서를 위치
			exit;

		} else if (document.addjoin.number_first.value == "") { //id값이 없을 경우
			alert("주민등록번호 앞자리를 입력하세요"); //메세지 경고창을 띄운 후
			document.addjoin.number_first.focus(); // id 텍스트박스에 커서를 위치
			exit;

		} else if (document.addjoin.number_secound.value == "") {
			alert("주민등록번호 뒷자리를 입력하세요");
			document.addjoin.number_secound.focus();
			exit;

		} else if (document.addjoin.id.value == "") {
			alert("아이디를 입력하세요");
			document.addjoin.id.focus();
			exit;

		} else if (document.addjoin.pwd.value == "") {
			alert("비밀번호를 입력하세요");
			document.addjoin.pwd.focus();
			exit;

		} else if (document.addjoin.pwdchk.value == "") {
			alert("비밀번호 한번 더 입력하세요");
			document.addjoin.pwdchk.focus();
			exit;

		} else if (document.addjoin.email_first.value == "") {
			alert("이메일을 입력하세요");
			document.addjoin.email_first.focus();
			exit;

		} else if (document.addjoin.addr_first.value == "") {
			alert("주소를 입력하세요");
			document.addjoin.addr_first.focus();
			exit;

		} else if (document.addjoin.addr_secound.value == "") {
			alert("주소를 입력하세요");
			document.addjoin.addr_secound.focus();
			exit;

		} else if (document.addjoin.phone.value == "") {
			alert("휴대폰번호를 입력하세요");
			document.addjoin.phone.focus();
			exit;

		} else if (document.addjoin.pwd.value != document.addjoin.pwdchk.value) {
			//비밀번호와 비밀번호확인의 값이 다를 경우
			alert("입력한 2개의 비밀번호가 일치하지 않습니다.");
			document.addjoin.pwd.focus();
			exit;
		}

		document.addjoin.submit();

	}
</script>
</head>
<body>

	<form action="JoinServlet" method="post" name="addjoin">

		이름 <input type="text" name="name"> <br> 주민등록번호 <input
			type="text" name="number_first"> - <input type="password"
			name="number_secound"> <br> 아이디 <input type="text"
			name="id"> <br> 비밀번호 <input type="password" name="pwd">
		<br> 비밀번호 확인 <input type="password" name="pwdchk"> <br>
		이메일 <input type="text" name="email_first"> @ <input
			type="text" name="email_secound"> <select name="email"
			size="1">
			<option value="naver.com">naver.com</option>
			<option value="nate.com">nate.com</option>
		</select> <br> 우편번호 <input type="text" name="addr_number"> <br>
		주소 <input type="text" name="addr_first"> <input type="text"
			name="addr_secound"> <br> 핸드폰번호<input type="text"
			name="phone"><br> <label for="job" style="float: left;">직업</label>
		<select name="job" size='6' multiple="multiple" id="job">
			<option value="학생">학생</option>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="언론">언론</option>
			<option value="공무원">공무원</option>
			<option value="군인">군인</option>
			<option value="서비스업">서비스업</option>
			<option value="교육">교육</option>
		</select> <br> 메일/SMS 정보 수신 <input type="radio" name="chk_email"
			value="수신" checked="checked">수신 <input type="radio"
			name="receive" value="수신거부">수신거부 <br> 관심분야 <input
			type="checkbox" name="item" value="생두"> 생두 <input
			type="checkbox" name="item" value="원두"> 원두 <input
			type="checkbox" name="item" value="로스팅"> 로스팅 <input
			type="checkbox" name="item" value="핸드드립"> 핸드드립 <input
			type="checkbox" name="item" value="에스프레소"> 에스프레소 <input
			type="checkbox" name="item" value="창업"> 창업 <br> <input
			type="button" value="회원가입" onclick="checkfield()"> <input
			type="reset" value="취소">
	</form>

</body>

</html>
