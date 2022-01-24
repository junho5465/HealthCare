<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@taglib
	prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/resources/css_P/tab.css" rel="stylesheet" />
<link href="/resources/css_P/slid.css" rel="stylesheet" />
<link href="/resources/css_P/cal.css" rel="stylesheet" />
<link href="/resources/css_P/cal_R.css" rel="stylesheet" />
<link href="/resources/css_P/cal_w.css" rel="stylesheet" />
<link href="/resources/css_P/cal_m.css" rel="stylesheet" />
<link href="/resources/css_P/cal_f.css" rel="stylesheet" />
<link href="/resources/css_P/input.css" rel="stylesheet" />
<link href='/resources/css_P/bootstrap.css' rel='stylesheet' />
<link href='/resources/css_P/rotating-card.css' rel='stylesheet' />
<link
	href="https://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>Document</title>
<jsp:include page="/WEB-INF/views/hellth/header.jsp" />
</head>
<body>

	<div id="fullpage">
		<div class='quick'>
			<ul></ul>
		</div>
		<div class="fullsection full1" pageNum="1">
			<div class="tabs">
				<div class="tab-header">
					<div class="active">개인정보</div>
					<div>몸무게</div>
					<div>지방량</div>
					<div>근육량</div>
				</div>
				<div class="tab-indicator"></div>
				<div class="tab-body">
					<div class="active">
						<div class="per_info">
							<div id="chart_radar">
								<canvas id="radar-chart"></canvas>
							</div>
							<div id="info_you">
								<p id="yours">
									당신의 레벨:
									<c:out value="${user_radar[0].grade}" />
									/
									<fmt:formatNumber value="${user_radar[0].point}" pattern="#.#" />
								</p>
								<br>
								<p id="yours">
									당신의 키:
									<c:out value="${user_info[0].height}" />
									CM
								</p>
								<br>
								<p id="yours">
									당신의 몸무게:
									<c:out value="${user_radar[0].weight}" />
									KG
								</p>
								<br>
								<p id="yours">
									당신의 근육량:
									<c:out value="${user_radar[0].muscle}" />
									KG
								</p>
								<br>
								<p id="yours">
									당신의 bmi:
									<fmt:formatNumber type="number" maxFractionDigits="2"
										value="${user_radar[0].weight/ ((user_radar[0].height*user_radar[0].height)/10000) }" />
								</p>
								<br>
							</div>
						</div>
					</div>

					<div>
						<div class="graph">
							<!-- 그래프 -->
							<canvas id="line-chart_w"></canvas>
						</div>
						<div id="input_w">
							<!-- 달력 -->
							<div class="container_w">
								<div class="my-calendar_w clearfix_w">
									<div class="clicked-date_w" style="display: none">
										<div class="cal-day_w"></div>
										<div class="cal-date_w"></div>
									</div>
									<div class="calendar-box_w">
										<div class="ctr-box_w clearfix_w">
											<button type="button" title="prev_w" class="btn-cal_w prev_w">
											</button>
											<span class="cal-month_w" style="color: white;"></span> <span
												class="cal-year_w" style="color: white;"></span>
											<button type="button" title="next_w" class="btn-cal_w next_w">
											</button>
										</div>
										<table class="cal-table_w">
											<thead>
												<tr>
													<th class="th_">S</th>
													<th class="th_">M</th>
													<th class="th_">T</th>
													<th class="th_">W</th>
													<th class="th_">T</th>
													<th class="th_">F</th>
													<th class="th_">S</th>
												</tr>
											</thead>
											<tbody class="cal-body_w"></tbody>
										</table>
									</div>
								</div>
								<!-- // .my-calendar -->
							</div>
							<!-- 달력  -->
							<div id="what">
								<!-- <p id="ment">당신의 변한 지방량을 입력하시오</p> -->

								<div id="field_input">
									<form id="form_w" name="weight" action="/Personal/personal_w"
										method="get">
										<input type="hidden" name="userId" value="${user_info[0].userId}" /> <input
											type="hidden" name="user_hei" value="${user_info[0].height}" />
										<input type="hidden" name="cal_W_in" id="cal_w_id" /> <input
											type="text" placeholder="몸무게 입력" class="gredient_input"
											id="weight_id" name="weight_input"
											onKeyPress="return checkNum(event)" /><br> <input
											type="submit" value="등록/수정" class="blue_button" />

									</form>
								</div>
							</div>
						</div>
					</div>

					<div>
						<div class="graph">
							<canvas id="line-chart_f"></canvas>
						</div>
						<div id="input_w">
							<!-- 달력 -->
							<div class="container_f">
								<div class="my-calendar_f clearfix_f">
									<div class="clicked-date_f" style="display: none">
										<div class="cal-day_f"></div>
										<div class="cal-date_f"></div>
									</div>
									<div class="calendar-box_f">
										<div class="ctr-box_f clearfix_f">
											<button type="button" title="prev_f" class="btn-cal_f prev_f">
											</button>
											<span class="cal-month_f" style="color: white;"></span> <span
												class="cal-year_f" style="color: white;"></span>
											<button type="button" title="next_f" class="btn-cal_f next_f">
											</button>
										</div>
										<table class="cal-table_f">
											<thead>
												<tr>
													<th class="th_">S</th>
													<th class="th_">M</th>
													<th class="th_">T</th>
													<th class="th_">W</th>
													<th class="th_">T</th>
													<th class="th_">F</th>
													<th class="th_">S</th>
												</tr>
											</thead>
											<tbody class="cal-body_f"></tbody>
										</table>
									</div>
								</div>
								<!-- // .my-calendar -->
							</div>
							<!-- 달력  -->
							<div id="what">
								<!-- <p id="ment">당신의 변한 지방량을 입력하시오</p> -->
								<div id="field_input">
									<form id="form_f" name="FAT" action="/Personal/personal_f"
										method="get">
										<input type="hidden" name="userId" value="${user_info[0].userId}" /> <input
											type="hidden" name="user_hei" value="${user_info[0].height}" />
										<input type="hidden" name="cal_F_in" id="cal_f_id" /> <input
											type="text" placeholder="지방량 입력" class="gredient_input"
											id="fat_id" name="fat_input"
											onKeyPress="return checkNum(event)" /><br> <input
											type="submit" value="등록/수정" class="blue_button" />

									</form>
								</div>
							</div>
						</div>
					</div>

					<div>
						<div class="graph">
							<canvas id="line-chart_m"></canvas>
						</div>
						<div id="input_w">
							<!-- 달력 -->
							<div class="container_m">
								<div class="my-calendar_m clearfix_m">
									<div class="clicked-date_m" style="display: none">
										<div class="cal-day_m"></div>
										<div class="cal-date_m"></div>
									</div>
									<div class="calendar-box_m">
										<div class="ctr-box_m clearfix_m">
											<button type="button" title="prev_m" class="btn-cal_m prev_m">
											</button>
											<span class="cal-month_m" style="color: white;"></span> <span
												class="cal-year_m" style="color: white;"></span>
											<button type="button" title="next_m" class="btn-cal_m next_m">
											</button>
										</div>
										<table class="cal-table_m">
											<thead>
												<tr>
													<th class="th_">S</th>
													<th class="th_">M</th>
													<th class="th_">T</th>
													<th class="th_">W</th>
													<th class="th_">T</th>
													<th class="th_">F</th>
													<th class="th_">S</th>
												</tr>
											</thead>
											<tbody class="cal-body_m"></tbody>
										</table>
									</div>
								</div>
								<!-- // .my-calendar -->
							</div>
							<!-- 달력  -->
							<div id="what">
								<!-- <p id="ment">당신의 변한 근육량을 입력하시오</p> -->
								<div id="field_input">
									<form id="form_m" name="muscle" action="/Personal/personal_m"
										method="get">
										<input type="hidden" name="userId" value="${user_info[0].userId}" /> <input
											type="hidden" name="user_hei" value="${user_info[0].height}" />
										<input type="hidden" name="cal_M_in" id="cal_m_id" /> <input
											type="text" placeholder="근육량 입력" class="gredient_input"
											id="muscle_id" name="muscle_input"
											onKeyPress="return checkNum(event)" /><br> <input
											type="submit" value="등록/수정" class="blue_button" />

									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- 다음 페이지 -->
		<div class="fullsection full2" pageNum="2">
			<div class="container">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="col-md-4 col-sm-6">
							<div class="card-container manual-flip">
								<div class="card">
									<div class="front">
										<div class="cover"></div>
										<div class="user"></div>
										<div class="content">
											<div class="main">
												<img src="/resources/image/exer.png" class="hel_img" />
											</div>
											<div class="footer">
												<button class="btn btn-simple" onclick="rotateCard(this)">
													<i class="fa fa-mail-forward"></i> 클릭해서 뒤집기
												</button>
											</div>
										</div>
									</div>
									<!-- end front panel -->
									<div class="back">
										<div class="header">
											<h5 class="motto">"당신의 운동 정보"</h5>
										</div>
										<div class="content">
											<div class="main">
												<!-- 여기다 달력 한거 작성 -->
												<div class="container_cal">
													<div class="my-calendar clearfix">
														<div class="clicked-date">
															<div class="cal-day"></div>
															<div class="cal-date"></div>
														</div>
														<div class="calendar-box">
															<div class="ctr-box clearfix">
																<button type="button" title="prev" class="btn-cal prev">
																</button>
																<span class="cal-month" style="color: white;"></span> <span
																	class="cal-year" style="color: white;"></span>
																<button type="button" title="next" class="btn-cal next">
																</button>
															</div>
															<table class="cal-table">
																<thead>
																	<tr>
																		<th class="th_">S</th>
																		<th class="th_">M</th>
																		<th class="th_">T</th>
																		<th class="th_">W</th>
																		<th class="th_">T</th>
																		<th class="th_">F</th>
																		<th class="th_">S</th>
																	</tr>
																</thead>
																<tbody class="cal-body"></tbody>
															</table>
														</div>
													</div>
													<!-- // .my-calendar -->
												</div>
												<!-- 달력 -->
												<input type="button" id="search_exr" value="찾아라!" class="blue_button" style=" margin-top: -2%; margin-left: 68%; ">
												<div id="detail_exr_p">
												<!-- 여기니 -->
													<div id="exer_c" style="width: 50%;  height: 100%;">
													
													</div>
													<div  id = "exer_w" style="width: 50%;  height: 100%; float: right; margin-top: -171px;">
													
													</div>
													
												</div>
											</div>
										</div>
										<div class="footer">
											<button class="btn btn-simple" rel="tooltip"
												title="Flip Card" onclick="rotateCard(this)">
												<i class="fa fa-reply"></i> 뒤집기
											</button>
										</div>
									</div>
									<!-- end back panel -->
								</div>
								<!-- end card -->
							</div>
							<!-- end card-container -->
						</div>
						<!-- end col sm 3 -->
						<!--         <div class="col-sm-1"></div> -->
						<div class="col-md-4 col-sm-6">
							<div class="card-container manual-flip">
								<div class="card">
									<div class="front">

										<div class="content">
											<div class="main">
												<img src="/resources/image/food1.png" class="hel_img" />
											</div>
											<div class="footer">
												<button class="btn btn-simple" onclick="rotateCard(this)">
													<i class="fa fa-mail-forward"></i> 클릭해서 뒤집기
												</button>
											</div>
										</div>
									</div>
									<!-- end front panel -->
									<div class="back">
										<div class="header">
											<h5 class="motto">"당신의 식단정보"</h5>
										</div>
										<div class="content">
											<div class="main">
												<!-- 여기다 달력 한거 작성 -->
												<div class="container_cal2">
													<div class="my-calendar2 clearfix2">
														<div class="clicked-date2">
															<div class="cal-day2"></div>
															<div class="cal-date2"></div>
														</div>
														<div class="calendar-box2">
															<div class="ctr-box2 clearfix2">
																<button type="button" title="prev2"
																	class="btn-cal2 prev2"></button>
																<span class="cal-month2" style="color: white;"></span> <span
																	class="cal-year2" style="color: white;"></span>
																<button type="button" title="next2"
																	class="btn-cal2 next2"></button>
															</div>
															
															<table class="cal-table2">
																<thead class="thead">
																	<tr>
																		<th class="th_">S</th>
																		<th class="th_">M</th>
																		<th class="th_">T</th>
																		<th class="th_">W</th>
																		<th class="th_">T</th>
																		<th class="th_">F</th>
																		<th class="th_">S</th>
																	</tr>
																</thead>
																<tbody class="cal-body2"></tbody>
															</table>
														</div>
													</div>
													<!-- // .my-calendar -->
												</div>
												<!-- 달력 -->
												
													
												<input type="button" id="search_food" value="찾아라!" class="blue_button" style=" margin-top: -2%; margin-left: 68%; ">
												
												<div id="detail_food_p">
												<!-- 여기니 -->
													
												</div>
											</div>
										</div>
										<div class="footer">
											<button class="btn btn-simple" rel="tooltip"
												title="Flip Card" onclick="rotateCard(this)">
												<i class="fa fa-reply"></i> 뒤집기
											</button>

										</div>
									</div>
									<!-- end back panel -->
								</div>
								<!-- end card -->
							</div>
							<!-- end card-container -->
						</div>
						<!-- end col sm 3 -->
						<!--         <div class="col-sm-1"></div> -->
					</div>
				</div>
				<!-- end row -->
			</div>
		</div>
	</div>



	<!-- 있어야 오류 안남 -->
	<script src="/resources/personal_JS/jquery-1.10.2.js"
		type="text/javascript"></script>
	<script src="/resources/personal_JS/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="/resources/personal_JS/cal.js" type="text/javascript"></script>
	<script src="/resources/personal_JS/cal_R.js" type="text/javascript"></script>
	<script src="/resources/personal_JS/cal_w.js" type="text/javascript"></script>
	<script src="/resources/personal_JS/cal_f.js" type="text/javascript"></script>
	<script src="/resources/personal_JS/cal_m.js" type="text/javascript"></script>
	<script src="/resources/personal_JS/tab.js" type="text/javascript"></script>
	<script src="/resources/personal_JS/slide.js" type="text/javascript"></script>
	<script src="/resources/personal_JS/frontback.js"
		type="text/javascript"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

	<script>
	console.log('<c:out value="${member.userId}"/>');

	var exerCList = new Array();
	var exerWList = new Array();
	
	<c:forEach var="item" items="${user_exerc}">
		exerCList.push({	
			exer_kind_c:"${item.exercise_cardio}"
			,time:"${item.cardio_time}"
			,exer_date:"${item.exer_date}"
		}); 
	</c:forEach>
	
	<c:forEach var="item" items="${user_exerw}">
		exerWList.push({	
			exer_kind_w:"${item.exercise_kinds}"
			,set:"${item.weight_set}"
			,date:"${item.date}"
		}); 
	</c:forEach>
	
	var path_ec = $("#exer_c");
	var path_ew = $("#exer_w");
	$("#search_exr").click(function(e){;
		$("#exer_c table").remove();
		$("#exer_w table").remove();
		var day =  init.activeDate;
		var day2 = (1900+day.getYear())+"-0"+(1+day.getMonth())+"-"+day.getDate();
		
		var str ="<table>";
		
		for(var i=0; i<exerCList.length;i++){
			if(exerCList[i].exer_date == day2){
				str += "<tr><td>"+exerCList[i].exer_kind_c +"</td><td>"+exerCList[i].time +"분</td></tr>";
			}
		}
		str += "</tabel>"
		path_ec.append(str);
		var str2 ="<table>";
		for(var i=0; i<exerWList.length;i++){
			if(exerWList[i].date == day2){
				str2 += "<tr><td>"+exerWList[i].exer_kind_w +"</td><td>"+exerWList[i].set+"SET X 10회</td></tr>";
			}
		}
		str2 += "</tabel>"
		path_ew.append(str2);
		
	});
	
	
	var path = $("#detail_food_p");
	var foodList = new Array();
	<c:forEach var="item" items="${user_food}">
		foodList.push({	
			foodName:"${item.foodName}"
			,kcal:"${item.personer_dos}"
			,regDate:"${item.regDate}"
		}); 
	</c:forEach>
	
	$("#search_food").click(function(e){
		$("#detail_food_p table").remove();
		var str ="<table>";
	var day = init2.activeDate;
	var day2 = (1900+day.getYear())+"-0"+(1+day.getMonth())+"-"+day.getDate();
	for(var i=0; i<foodList.length;i++){
		if(foodList[i].regDate == day2){
			str += "<tr><td>"+foodList[i].regDate+"</td><td>"+foodList[i].foodName +"</td><td>"+foodList[i].kcal+"kcal</td></tr>";
		}
	}
	str += "</tabel>"
	path.append(str);
	});
	
	var m = document.getElementById('form_m');
	m.addEventListener('submit', function(event){
		var muscle = document.getElementById('muscle_id').value;
		var cal = document.getElementById('cal_m_id').value;
		var temp = new Date(cal).getTime();
		var today = new Date();
		
	    if(document.getElementById('muscle_id').value.length === 0 ){
	        alert('근육량 입력이나 하셈--');
	        event.preventDefault();
	    }
	    if(document.getElementById('cal_m_id').value.length === 0){
	    	alert('날짜 선택 하셈--');
	        event.preventDefault();
	    }
	    if( temp > today.getTime()){
	    	alert("아니 미래로 가시려고?");	  
	        event.preventDefault();
	    }
	});
	
	var f = document.getElementById('form_f');
	f.addEventListener('submit', function(event){
		var fat = document.getElementById('fat_id').value;
		var cal = document.getElementById('cal_f_id').value;
		var temp = new Date(cal).getTime();
		var today = new Date();
	    if(document.getElementById('fat_id').value.length === 0){
	        alert('지방 입력이나 하셈--');
	        event.preventDefault();
	    }
	    if(document.getElementById('cal_f_id').value.length === 0){
	    	alert('날짜 선택 하셈--');
	        event.preventDefault();
	    }
	    if( temp > today.getTime()){
	    	alert("아니 미래로 가시려고?");	  
	        event.preventDefault();
	    }
	});
	
	var w = document.getElementById('form_w');
	w.addEventListener('submit', function(event){
		var weight = document.getElementById('weight_id').value;
		var cal = document.getElementById('cal_w_id').value;
		var temp = new Date(cal).getTime();
		var today = new Date();
	    if(document.getElementById('weight_id').value.length === 0){
	        alert('몸무게 입력이나 하셈--');
	        event.preventDefault();
	    }
	    if(document.getElementById('cal_w_id').value.length === 0){
	    	alert('날짜 선택 하셈--');
	        event.preventDefault();
	    }
	    if( temp > today.getTime()){
	    	alert("아니 미래로 가시려고?");	  
	        event.preventDefault();
	    }
	});

	
	function checkNum(e) {
	    var keyVal = event.keyCode;
	
	    if(((keyVal >= 48) && (keyVal <= 57))){
	        return true;
	    }
	    else{
	        alert("숫자만 입력가능합니다");
	        return false;
	    }
	}
	var m_info = [10];
	var m_day = ["시작"];
	<c:forEach var="list2" items="${user_info}">
		<c:if test="${list2.muscle ne 0}">
			m_info.push(<c:out value="${list2.muscle}"/>)
			m_day.push(<c:out value="${list2.regDate.getMonth()+1}"/>+"월"+<c:out value="${list2.regDate.getDate()}"/>+"일")
		</c:if>
	</c:forEach>
	
	var f_info = [10];
	var f_day = ["시작"];
	<c:forEach var="list2" items="${user_info}">
		<c:if test="${list2.fat ne 0}">
			f_info.push(<c:out value="${list2.fat}"/>)
			f_day.push(<c:out value="${list2.regDate.getMonth()+1}"/>+"월"+<c:out value="${list2.regDate.getDate()}"/>+"일")
		</c:if>
	</c:forEach>
	
	var w_info = [30];
	var w_day = ["시작"];
	<c:forEach var="list2" items="${user_info}">
		<c:if test="${list2.weight ne 0}">
			w_info.push(<c:out value="${list2.weight}"/>)
			w_day.push(<c:out value="${list2.regDate.getMonth()+1}"/>+"월"+<c:out value="${list2.regDate.getDate()}"/>+"일")
		</c:if>
	</c:forEach>
	
	new Chart(document.getElementById("radar-chart"), {
	    type: 'radar',
	    data: {
	      labels: ["키CM", "몸무게KG", "근육량KG", "지방%", "bmi"],
	      datasets: [
	        {
	          label: "평균",
	          fill: true,
	          backgroundColor: "rgba(179,181,198,0.2)",
	          borderColor: "rgba(179,181,198,1)",
	          pointBorderColor: "#fff",
	          pointBackgroundColor: "rgba(179,181,198,1)",
	          data: ["${users_avg[0].height}","${users_avg[0].weight}","${users_avg[0].muscle}","${users_avg[0].fat}","${users_avg[0].weight/ ((users_avg[0].height*users_avg[0].height)/10000) }"]
	        }, {
	          label:  "<c:out value="${user_info[0].userId}"/>",
	          fill: true,
	          backgroundColor: "rgba(255,99,132,0.2)",
	          borderColor: "rgba(255,99,132,1)",
	          pointBorderColor: "#fff",
	          pointBackgroundColor: "rgba(255,99,132,1)",
	          pointBorderColor: "#fff",
	          data: ["${user_info[0].height}","${user_radar[0].weight}","${user_radar[0].muscle}","${user_radar[0].fat}","${user_radar[0].weight/ ((user_info[0].height*user_info[0].height)/10000) }"]
	        }
	      ]
	    },
	    options: {
	        maintainAspectRatio : false,
	      title: {
	        display: true,
	        text: '당신 정보 한눈에 보기'
	      }
	    }
	});		
      new Chart(document.getElementById("line-chart_m"), {
        type: 'line',
        data: {
            labels: m_day,
            datasets: [{
                data: m_info,		
                label: "근육량 (단위 : kg)",
                borderColor: "#3cba9f",
                lineTension: 0,
                backgroundColor: 'rgba(	60, 186, 159,0.5)'
                // fill: false           
            }]
        },
        options: {
            maintainAspectRatio: false,
            title: {
                display: true,
                text: '당신의 근육량 변화'
            }
        }
    });   
    new Chart(document.getElementById("line-chart_w"), {
        type: 'line',
        data: {
        	labels: w_day,
            datasets: [{
                data: w_info,
                label: "몸무게 (단위 : kg)",
                borderColor: "#3e95cd",
                lineTension: 0,
                backgroundColor: 'rgba(62,149,205,0.5)'
                // fill: false
            }]
        },
        options: {
            maintainAspectRatio: false,
            title: {
                display: true,
                text: '당신의 몸무게 변화'
            }
        }
    });
    new Chart(document.getElementById("line-chart_f"), {
        type: 'line',
        data: {
        	labels: f_day,
            datasets: [{
                data: f_info,
                label: "체지방 (단위 : %)",
                borderColor: "#8e5ea2",
                lineTension: 0,
                backgroundColor: 'rgba(142,94,162,0.5)'
                // fill: false
            }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: {
                display: true,
                text: '당신의 체지방 변화'
            }
        }
    });
</script>
</body>
</html>