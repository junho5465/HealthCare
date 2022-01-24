<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="../resources/css/login.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.js"></script>
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
</head>
<body>
	<%-- <%@ include file="header.jsp" %> --%>
	<jsp:include page="header2.jsp"></jsp:include>
	<div class="page">
		<div class="container">
			<div class="left">
				<div class="login"></div>
				<div class="eula"></div>
			</div>
			<div class="right">
				<svg viewBox="0 0 320 300">
                    <defs>
                        <linearGradient inkscape:collect="always"
						id="linearGradient" x1="13" y1="193.49992" x2="307" y2="193.49992"
						gradientUnits="userSpaceOnUse">
                            <stop style="stop-color:#ff00ff;" offset="0"
						id="stop876" />
                            <stop style="stop-color:#ff0000;" offset="1"
						id="stop878" />
                        </linearGradient>
                    </defs>
                    <path
						d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
				<div class="form">
					<form action="/hellth/main" method="post" id="loginFrm"
						name="loginFrm">
						<label for="userId">ID</label> <input type="text" id="userId"
							name="userId" autocomplete="off"> <label for="password">Password</label>
						<input type="password" id="password" name="userPwd"
							autocomplete="off"> <input type="submit" id="submit"
							value="Submit" onClick = "return checklogin();"> <label><a href="/hellth/survey"
							style="color: orange;">Do you have Account? Click me!</a></label>
					</form>
				</div>
			</div>
		</div>
	</div>		
	<script type="text/javascript" charset = "utf-8">
		function checklogin(){
			var form = document.loginFrm;
			
			//아이디 값 입력 X
			if(form.userId.value == ""){
				alert('아이디를 입력해주세요.');
				form.userId.false;
				return false;
			}else if(form.userPwd.value ==""){
				alert('비밀번호를 입력해주세요.');
				form.userPwd.focus();
				return false;
			}
			form.submit();
		}
	</script>
	<script>
		var current = null;
		document.querySelector('#userId').addEventListener('focus',
				function(e) {
					if (current)
						current.pause();
					current = anime({
						targets : 'path',
						strokeDashoffset : {
							value : 0,
							duration : 700,
							easing : 'easeOutQuart'
						},
						strokeDasharray : {
							value : '240 1386',
							duration : 700,
							easing : 'easeOutQuart'
						}
					});
				});
		document.querySelector('#password').addEventListener('focus',
				function(e) {
					if (current)
						current.pause();
					current = anime({
						targets : 'path',
						strokeDashoffset : {
							value : -336,
							duration : 700,
							easing : 'easeOutQuart'
						},
						strokeDasharray : {
							value : '240 1386',
							duration : 700,
							easing : 'easeOutQuart'
						}
					});
				});
		document.querySelector('#submit').addEventListener('focus',
				function(e) {
					if (current)
						current.pause();
					current = anime({
						targets : 'path',
						strokeDashoffset : {
							value : -730,
							duration : 700,
							easing : 'easeOutQuart'
						},
						strokeDasharray : {
							value : '530 1386',
							duration : 700,
							easing : 'easeOutQuart'
						}
					});
				});
		//랜덤 이미지 - 새로고침할 때마다 바뀜
		$(document).ready(function() {
			var numberOfImages = 2;
			var imageNum = Math.round(Math.random()
					* (numberOfImages - 1)) + 1;
			var imgPath = ('../resources/login' + imageNum + '.png');
			$('.left').css('background-image',
				('url("' + imgPath + '")'));
		});
	</script>
</body>
</html>