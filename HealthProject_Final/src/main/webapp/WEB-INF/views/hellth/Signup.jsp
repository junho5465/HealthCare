<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/signup.css">
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap"
	rel="stylesheet">
</head>
<body>
	<%
	String grade = request.getParameter("grade");
	int point = Integer.parseInt(request.getParameter("point"));
	%>
	<%@ include file="header2.jsp" %>
	<form action="/hellth/Signup" method="post" autocomplete="off"
		class='signup_form' enctype="multipart/form-data">
		<div class="sign">
			<div id="focus"></div>
			<h1>회원가입</h1>
			<div class="container">
				<div class="avatar_wrapper">
					<span class="show_image uploadfile"
						style="background-image: url(https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png)"
						data-default="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"></span>
					<input type="file" class="j_loadimage avatar_input" name="uploadfile" />
				</div>
			</div>
			<input type="text" name="userId" placeholder="아이디를 입력하세요."
				autocomplete="off"> <input type="password" name="userPwd"
				placeholder="비밀번호를 입력하세요." autocomplete="off"> <input
				type="text" name="userName" placeholder="이름을 입력하세요."
				autocomplete="off"> <input type="text" name="height"
				placeholder="키를 입력하세요." autocomplete="off"> <input
				type="text" name="weight" placeholder="몸무게를 입력하세요."
				autocomplete="off"> <input type="hidden" name="grade"
				value="<%=grade%>"> <input type="hidden" name="point"
				value="<%=point%>">
			<button type="submit" style="font-size: 15px;">회원가입</button>
		</div>
	</form>
	
	<script>
		//업로드 이미지 바로 띄우기?
		$(".j_loadimage").change(function () {
			var input = $(this);
			var target = $("." + input.attr("name"));
			var fileDefault = target.attr("data-default");

			if (!input.val()) {
				target.fadeOut("fast", function () {
					$(this)
						.css("background-image", "url(" + fileDefault + ")")
						.fadeIn("slow");
				});
				return false;
			}

			if (
				this.files &&
				(this.files[0].type.match("image/jpeg") ||
					this.files[0].type.match("image/png") ||
					this.files[0].type.match("image/jpeg"))
			) {
				var reader = new FileReader();
				reader.onload = function (e) {
					target.fadeOut("fast", function () {
						$(this)
							.css("background-image", "url(" + e.target.result + ")")
							.fadeIn("fast");
					});
				};
				reader.readAsDataURL(this.files[0]);
			} else {
				target.fadeOut('fast', function () {
					$(this).css('background-image', 'url(' + fileDefault + ')').fadeIn('slow');
				});
				input.val('');
				return false;
			}
		});
	</script>

	<script>
		const FORM = $("form"); // set form or other element here
		const TYPES = [ "input[type=text], input[type=password], button[type=submit]" ]; // set which elements get targeted by the focus
		const FOCUS = $("#focus"); // focus element

		// function for positioning the div
		function position(e) {
			// get position
			var props = {
				top : e.offset().top,
				left : e.offset().left,
				width : e.outerWidth(),
				height : e.outerHeight(),
				radius : parseInt(e.css("border-radius"))
			};

			// set position
			FOCUS.css({
				top : props.top,
				left : props.left,
				width : props.width,
				height : props.height,
				"border-radius" : props.radius
			});

			FOCUS.fadeIn(200);
		}

		FORM.find(TYPES.join()).each(function(i) {
			// when clicking an input defined in TYPES
			$(this).focus(function() {
				el = $(this);

				// adapt size/position when resizing browser
				$(window).resize(function() {
					position(el);
				});

				position(el);
			});
		});

		FORM.on("focusout", function(e) {
			setTimeout(function() {
				if (!e.delegateTarget.contains(document.activeElement)) {
					FOCUS.fadeOut(200);
				}
			}, 0);
		});
	</script>
</body>
</html>