<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 스와이프 -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<!-- 라디오 버튼 클릭 -->
<link rel="stylesheet" href="css/jquery.checkradios.css" type="text/css" />
<!-- 우리 CSS -->
<link rel="stylesheet" href="../resources/css/survey.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/jquery.checkradios.js"></script>
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<!-- ============================= 글꼴 =============================-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap"
	rel="stylesheet">
<!-- ======================================================================-->
<!-- ============================= 헤더 퍼온곳 =============================-->
<link href="../resources/css/header.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- ======================================================================-->
<link type="text/css" src="./dist/bttn.min.css" />
</head>
<body>
	<!-- 헤더 부분 -->
	<div class="wrap">
		<span id="logo"><a href="/hellth/index">HELLTH</a></span>
	</div>

	<!-- 슬라이더 부분 -->
	<form name="myform" action="/hellth/Signup.do" method="post">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="survey1">
						<!-- 설문조사임을 확인 시켜주기 위한 텍스트 -->
						<!-- 설문조사 div 1번 -->
						<div class="rb-box">
							<h3 class='survey_q'>지금부터 회원가입에 필요한 설문조사를 실시하도록 하겠습니다.</h3>
							<!-- 설문 1번 -->
							<!-- 운동 관련 -->
							<p class="surveysName">Q1) 얼마나 자주 운동을 하나요?</p>
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='q1'
										type='radio' id='a1' value="1"> <span
										class='inner-label'>전혀 하지 않는다.</span>
									</label> <label class='radio-label'> <input name='q1'
										type='radio' id='a2' value="2"> <span
										class='inner-label'>드물게 한다.</span>
									</label> <label class='radio-label'> <input name='q1'
										type='radio' id='a3' value="3"> <span
										class='inner-label'>가끔 생각날 때 한다.</span>
									</label> <label class='radio-label'> <input name='q1'
										type='radio' id='a4' value="4"> <span
										class='inner-label'>자주하는 편이다.</span>
									</label> <label class='radio-label'> <input name='q1'
										type='radio' id='a5' value="5"> <span
										class='inner-label'>항상 운동을 하고 있다.</span>
									</label>
								</div>
							</div>
							<!-- <input type="radio" id="a1" name="radio_btn1" value="1" /> <label for="a1"><span></span>전혀
                                하지 않는다.</label> <input type="radio" id="a2" name="radio_btn1" value="2" /> <label
                                for="a2"><span></span>드물게
                                한다.</label> <input type="radio" id="a3" name="radio_btn1" value="3" />
                            <label for="a3"><span></span>가끔 생각날 때 한다.</label> <input type="radio" id="a4"
                                name="radio_btn1" value="4" /> <label for="a4"><span></span>자주하는 편이다.</label> <input
                                type="radio" id="a5" name="radio_btn1" value="5" /> <label for="a5"><span></span>항상
                                운동을 하고 있다.</label> -->

							<!-- 설문 2번 -->
							<p class="surveysName">Q2) 규칙적으로 운동할 수 있다고 자신하나요?</p>
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='q2'
										type='radio' id='b1' value="1"> <span
										class='inner-label'>전혀 자신할 수 없다.</span>
									</label> <label class='radio-label'> <input name='q2'
										type='radio' id='b2' value="2"> <span
										class='inner-label'>약간 자신한다.</span>
									</label> <label class='radio-label'> <input name='q2'
										type='radio' id='b3' value="3"> <span
										class='inner-label'>어느정도 자신한다.</span>
									</label> <label class='radio-label'> <input name='q2'
										type='radio' id='b4' value="4"> <span
										class='inner-label'>상당히 자신한다.</span>
									</label> <label class='radio-label'> <input name='q2'
										type='radio' id='b5' value="5"> <span
										class='inner-label'>대단히 자신한다.</span>
									</label>
								</div>
							</div>

							<!-- 설문 3번 -->
							<p class="surveysName">Q3) 운동을 생각해보세요. 긍정적인가요? 부정적인가요?</p>
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='q3'
										type='radio' id='c1' value="1"> <span
										class='inner-label'>완전히 부정적이다.</span>
									</label> <label class='radio-label'> <input name='q3'
										type='radio' id='c2' value="2"> <span
										class='inner-label'>약간 부정적이다.</span>
									</label> <label class='radio-label'> <input name='q3'
										type='radio' id='c3' value="3"> <span
										class='inner-label'>중간이다.</span>
									</label> <label class='radio-label'> <input name='q3'
										type='radio' id='c4' value="4"> <span
										class='inner-label'>어느정도 긍정적이다.</span>
									</label> <label class='radio-label'> <input name='q3'
										type='radio' id='c5' value="5"> <span
										class='inner-label'>매우 긍정적이다.</span>
									</label>
								</div>
							</div>

							<!-- 설문 4번 -->
							<p class="surveysName">Q4) 규칙적인 운동을 일상생활의 일부분으로 만들 수 있다고 확신
								하시나요?</p>
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='q4'
										type='radio' id='d1' value="1"> <span
										class='inner-label'>전혀 확신할 수 없다.</span>
									</label> <label class='radio-label'> <input name='q4'
										type='radio' id='d2' value="2"> <span
										class='inner-label'>약간 확신한다.</span>
									</label> <label class='radio-label'> <input name='q4'
										type='radio' id='d3' value="3"> <span
										class='inner-label'>어느정도 확신한다.</span>
									</label> <label class='radio-label'> <input name='q4'
										type='radio' id='d4' value="4"> <span
										class='inner-label'>상당히 확신한다.</span>
									</label> <label class='radio-label'> <input name='q4'
										type='radio' id='d5' value="5"> <span
										class='inner-label'>대단히 확신한다.</span>
									</label>
								</div>
							</div>
							<p class="surveysName">Q5) 규칙적인 식생활 자주 하시나요?</p>
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='q5'
										type='radio' id='e1' value="3"> <span
										class='inner-label'>네 자주합니다.</span>
									</label> <label class='radio-label'> <input name='q5'
										type='radio' id='e2' value="2"> <span
										class='inner-label'>가끔 그럽니다.</span>
									</label> <label class='radio-label'> <input name='q5'
										type='radio' id='e3' value="1"> <span
										class='inner-label'>전혀 지키지 않습니다.</span>
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="swiper-slide">
					<div class="survey1">
						<!-- 설문조사 div 2번 -->
						<div class="rb-box">
							<!-- 설문 5번 -->
							<!-- 식습관 관련 -->

							<!-- 설문 6번 -->
							<p class="surveysName">Q6) 하루에 3끼 식사를 하시나요?</p>
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='q6'
										type='radio' id='f1' value="3"> <span
										class='inner-label'>네 자주합니다.</span>
									</label> <label class='radio-label'> <input name='q6'
										type='radio' id='f2' value="2"> <span
										class='inner-label'>가끔 그럽니다.</span>
									</label> <label class='radio-label'> <input name='q6'
										type='radio' id='f3' value="1"> <span
										class='inner-label'>전혀 지키지 않습니다.</span>
									</label>
								</div>
							</div>

							<!-- 설문 7번 -->
							<p class="surveysName">Q7) 아침 식사를 제대로 먹나요?</p>
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='q7'
										type='radio' id='g1' value="3"> <span
										class='inner-label'>네 자주합니다.</span>
									</label> <label class='radio-label'> <input name='q7'
										type='radio' id='g2' value="2"> <span
										class='inner-label'>가끔 그럽니다.</span>
									</label> <label class='radio-label'> <input name='q7'
										type='radio' id='g3' value="1"> <span
										class='inner-label'>전혀 지키지 않습니다.</span>
									</label>
								</div>
							</div>

							<p class="surveysName">Q8) 정해진 시간에 식사하시나요?</p>
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='q8'
										type='radio' id='h1' value="3"> <span
										class='inner-label'>네 자주합니다.</span>
									</label> <label class='radio-label'> <input name='q8'
										type='radio' id='h2' value="2"> <span
										class='inner-label'>가끔 그럽니다.</span>
									</label> <label class='radio-label'> <input name='q8'
										type='radio' id='h3' value="1"> <span
										class='inner-label'>전혀 지키지 않습니다.</span>
									</label>
								</div>
							</div>

							<p class="surveysName">Q9) 여유있게 천천히 식사하시나요?</p>
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='q9'
										type='radio' id='i1' value="3"> <span
										class='inner-label'>네 자주합니다.</span>
									</label> <label class='radio-label'> <input name='q9'
										type='radio' id='i2' value="2"> <span
										class='inner-label'>가끔 그럽니다.</span>
									</label> <label class='radio-label'> <input name='q9'
										type='radio' id='i3' value="1"> <span
										class='inner-label'>전혀 지키지 않습니다.</span>
									</label>
								</div>
							</div>

							<p class="surveysName">Q10) 과식을 하시나요?</p>
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='q10'
										type='radio' id='j1' value="3"> <span
										class='inner-label'>네 자주합니다.</span>
									</label> <label class='radio-label'> <input name='q10'
										type='radio' id='j2' value="2"> <span
										class='inner-label'>가끔 그럽니다.</span>
									</label> <label class='radio-label'> <input name='q10'
										type='radio' id='j3' value="1"> <span
										class='inner-label'>전혀 지키지 않습니다.</span>
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="survey1">
						<!-- 설문조사 div 3번 -->
						<div class="rb-box">
							<p class="surveysName">Q11)휴일에도 별로 외출하지 않고 집에서 하는 일 없이 있는 경우가
								많다. &nbsp;
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='t1'
										type='radio' id='aa1' value="1"> <span
										class='inner-label'>네</span>
									</label> <label class='radio-label'> <input name='t1'
										type='radio' id='aa2' value="2"> <span
										class='inner-label'>아니요</span>
									</label>
								</div>
							</div>
							</p>
							<p class="surveysName">Q12)계단보다는 엘리베이터나 에스컬레이터를 이용하는 경우가 많다.
								&nbsp;
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='t2'
										type='radio' id='bb1' value="1"> <span
										class='inner-label'>네</span>
									</label> <label class='radio-label'> <input name='t2'
										type='radio' id='bb2' value="2"> <span
										class='inner-label'>아니요</span>
									</label>
								</div>
							</div>
							</p>
							<p class="surveysName">Q13)운동이나 몸을 움직여서 하는 일은 뭐든지 다 귀찮아 한다.
								&nbsp;
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='t3'
										type='radio' id='cc1' value="1"> <span
										class='inner-label'>네</span>
									</label> <label class='radio-label'> <input name='t3'
										type='radio' id='cc2' value="2"> <span
										class='inner-label'>아니요</span>
									</label>
								</div>
							</div>
							</p>
							<p class="surveysName">Q14)아침에는 언제나 시간이 아슬아슬해 질 때 까지 잠을 자고,
								아침밥을 먹지 못할 때가 많다. &nbsp;
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='t4'
										type='radio' id='dd1' value="1"> <span
										class='inner-label'>네</span>
									</label> <label class='radio-label'> <input name='t4'
										type='radio' id='dd2' value="2"> <span
										class='inner-label'>아니요</span>
									</label>
								</div>
							</div>
							</p>
							<p class="surveysName">Q15)하루에 걷는 것을 다 합쳐도 보통 20분 이내이다.
								&nbsp;
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='t5'
										type='radio' id='ee1' value="1"> <span
										class='inner-label'>네</span>
									</label> <label class='radio-label'> <input name='t5'
										type='radio' id='ee2' value="2"> <span
										class='inner-label'>아니요</span>
									</label>
								</div>
							</div>
							</p>
						</div>
					</div>
				</div>

				<div class="swiper-slide">
					<div class="survey1">
						<!-- 설문조사 div 2번 -->
						<div class="rb-box">
							<p class="surveysName">Q16)텔레비전을 보든, 책을 보든 무슨 일을 할 때 뭔가를 먹으면서
								하는 것을 좋아한다. &nbsp;
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='t6'
										type='radio' id='ff1' value="1"> <span
										class='inner-label'>네</span>
									</label> <label class='radio-label'> <input name='t6'
										type='radio' id='ff2' value="2"> <span
										class='inner-label'>아니요</span>
									</label>
								</div>
							</div>
							</p>
							<p class="surveysName">Q17)친구들과 비교해 볼 때 걷는 속도가 유난히 느린 편이다.
								&nbsp;
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='t7'
										type='radio' id='gg1' value="1"> <span
										class='inner-label'>네</span>
									</label> <label class='radio-label'> <input name='t7'
										type='radio' id='gg2' value="2"> <span
										class='inner-label'>아니요</span>
									</label>
								</div>
							</div>
							</p>
							<p class="surveysName">Q18)전철이나 버스에서 빈 자리가 생기면 "잘 됐다!"하고 얼른
								가서 앉는다. &nbsp;
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='t8'
										type='radio' id='hh1' value="1"> <span
										class='inner-label'>네</span>
									</label> <label class='radio-label'> <input name='t8'
										type='radio' id='hh2' value="2"> <span
										class='inner-label'>아니요</span>
									</label>
								</div>
							</div>
							</p>
							<p class="surveysName">Q19)뭔가 일을 부탁 받으면 '귀찮아!'하고 생각한다. &nbsp;



							
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='t9'
										type='radio' id='ii1' value="1"> <span
										class='inner-label'>네</span>
									</label> <label class='radio-label'> <input name='t9'
										type='radio' id='ii2' value="2"> <span
										class='inner-label'>아니요</span>
									</label>
								</div>
							</div>
							</p>
							<p class="surveysName">Q20)자신의 서 있는 모습이나 걷고 잇는 모습에는 별로 신경 쓰지
								않는다. &nbsp;
							<div class="center">
								<div class='radio-group'>
									<label class='radio-label'> <input name='t10'
										type='radio' id='jj1' value="1"> <span
										class='inner-label'>네</span>
									</label> <label class='radio-label'> <input name='t10'
										type='radio' id='jj2' value="2"> <span
										class='inner-label'>아니요</span>
									</label>
								</div>
							</div>
							</p>
							<input type="hidden" value="" name="point"> <input
								type="hidden" value="" name="grade">
							<button type="submit" id="btn" onClick="radio_chk();" class="raise">설문마치기</button>
						</div>
					</div>
				</div>


			</div>
			<!-- If we need pagination -->
			<div class="swiper-pagination"></div>

			<!-- If we need navigation buttons -->
			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>

			<div class="swiper-scrollbar"></div>
		</div>
	</form>
	</div>
	<!-- If we need pagination -->

	<div class="swiper-pagination"></div>

	<!-- If we need navigation buttons -->
	<div class="swiper-button-prev"></div>
	<div class="swiper-button-next"></div>

	<div class="swiper-scrollbar"></div>
	</div>
	</form>




	<!-- 슬라이드에 관한 자바스크립트 -->
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script>
		var mySwiper = new Swiper('.swiper-container', {
			// 슬라이드를 버튼으로 움직일 수 있습니다.
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},

			// 현재 페이지를 나타내는 점이 생깁니다. 클릭하면 이동합니다.
			pagination : {
				el : '.swiper-pagination',
				type : 'bullets',
			}
		});
	</script>

	<script type="text/javascript">
		function radio_chk() {
			var str = "";
			/* var form = document.getElementByName('myform'); */
			//체크한 라디오 버튼값들 가져오기
			var q1 = $('input[name=q1]:checked').val();
			var q2 = $('input[name=q2]:checked').val();
			var q3 = $('input[name=q3]:checked').val();
			var q4 = $('input[name=q4]:checked').val();
			var q5 = $('input[name=q5]:checked').val();
			var q6 = $('input[name=q6]:checked').val();
			var q7 = $('input[name=q7]:checked').val();
			var q8 = $('input[name=q8]:checked').val();
			var q9 = $('input[name=q9]:checked').val();
			var q10 = $('input[name=q10]:checked').val();
			var t1 = $('input[name=t1]:checked').val();
			var t2 = $('input[name=t2]:checked').val();
			var t3 = $('input[name=t3]:checked').val();
			var t4 = $('input[name=t4]:checked').val();
			var t5 = $('input[name=t5]:checked').val();
			var t6 = $('input[name=t6]:checked').val();
			var t7 = $('input[name=t7]:checked').val();
			var t8 = $('input[name=t8]:checked').val();
			var t9 = $('input[name=t9]:checked').val();
			var t10 = $('input[name=t10]:checked').val();

			q1 = parseInt(q1);
			q2 = parseInt(q2);
			q3 = parseInt(q3);
			q4 = parseInt(q4);
			q5 = parseInt(q5);
			q6 = parseInt(q6);
			q7 = parseInt(q7);
			q8 = parseInt(q8);
			q9 = parseInt(q9);
			q10 = parseInt(q10);
			t1 = parseInt(t1);
			t2 = parseInt(t2);
			t3 = parseInt(t3);
			t4 = parseInt(t4);
			t5 = parseInt(t5);
			t6 = parseInt(t6);
			t7 = parseInt(t7);
			t8 = parseInt(t8);
			t9 = parseInt(t9);
			t10 = parseInt(t10);

			//라디오 값들 더하기
			var point = 0;
			var grade = "";

			point = q1 + q2 + q3 + q4 + q5 + q6 + q7 + q8 + q9 + q10 + t1 + t2
					+ t3 + t4 + t5 + t6 + t7 + t8 + t9 + t10;

			if (point >= 45) {
				grade = "HellChang";
			} else if (point >= 35 && point < 45) {
				grade = "MyulChi";
			} else if (point >= 0 && point < 35) {
				grade = "DaeJi"
			}
			document.myform.point.value = point;
			document.myform.grade.value = grade;
		}
	</script>
</body>
</html>