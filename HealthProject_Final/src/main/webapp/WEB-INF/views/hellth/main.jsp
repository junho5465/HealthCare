<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="../resources/css/main.css">
<head>
<meta charset="UTF-8">
<title>HELLTH MAIN</title>
</head>
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<body>
	<jsp:include page="/WEB-INF/views/hellth/header.jsp" />
	<div class="main_body">
		<img class="main_face" src='/hellth/display?fileName=${userImg }' >	
	</div>

	<!-- <div class="main_detail">
<h1 style="color:white">내 정보</h1>
<div class="main_detail_info">
<h3>여기부터</h3>
</div>
</div> -->

	<div class="container">
		<main>
			<h1 class="t1">상세 정보</h1>
			<!-- <div class="toggle-group">
				<input id="today-date" type="radio" name="date-choose" checked>
				<label for="spec_" class="t3">한눈에 보기</label>
				<input id="yesterday-date" type="radio" name="date-choose"> 
			</div> -->
			<h1 id="no-data">오늘의 정보가 부족합니다</h1>
			<div class="chart"></div>
			<canvas id="blur-radar-chart" width="310" height="330"></canvas>
		<canvas id="radar-chart" width="310" height="330"></canvas>
		</main>
		<div class="toggle-group">
		
		<a href="/Personal/personal?userId=${member.userId}"><button style="width:300px;" type="button"  class="t3">개인 관리</button></a></div>
	</div>

	<div class="main_select_button">

		<div class="main_left button">
			<button class="main_button" onClick="location.href='/health/exercise'">운동 정보</button>
			<button class="main_button" onClick="location.href='/health/exercise_add'">운동 추가</button>
			
		</div>

		<div class="main_right button">
			<button class="main_button" onClick="location.href='/Ranking/Rank'">랭킹 보기</button>
			<button class="main_button" onClick="location.href='/health/food'">식단 관리</button>
		</div>
		<!-- main_select_button end -->
	</div>
</body>




<script>
 $(document).ready(function(){
	var userGrade='${userGrade}';
	var output;
	if(userGrade == 'HellChang'){
		output="<img class='main_body_profile' src='/resources/images/main_body_profile_no_face_a.png'/>"		
	}else if(userGrade=='MyulChi'){
		output="<img class='main_body_profile' src='/resources/images/main_body_profile_no_face_b.png'/>"			
	}else if(userGrade=='DaeJi'){
		output="<img class=main_body_profile src=/resources/images/main_body_profile_no_face_c.png/>"			
	}
	$(".main_body").append(output);
}) 

var userId = "${userSpec.userId}";
var check = parseInt(${check});
console.log("123"+check);
if(check==0){	
	console.log("123124");
}
if(check>=1){
	var userHeight = ${userSpec.height};
	var userWeight = ${userSpec.weight};
	var userMuscle = ${userSpec.muscle}; 
	var userFat = ${userSpec.fat};
	var bmiHeigth = Math.pow(parseFloat(userHeight/100),2);
	var userBMI = userWeight/bmiHeigth; 
}

var avgHeight = ${avgHeight};
var avgWeight = ${avgWeight};
var avgMuscle = ${avgMuscle};
var avgFat = ${avgFat};
var avgBmi = avgWeight/(Math.pow(parseFloat(avgHeight/100),2));

 if(userWeight==0||userMuscle==0||userFat==0){
	document.getElementById("radar-chart").outerHTML="";
	new Chart(document.getElementById("blur-radar-chart"), {
	    type: 'radar',
	    data: {
	      labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
	      datasets: [
	        {
	          label: "1950",
	          fill: true,
	          backgroundColor: "rgba(179,181,198,0.2)",
	          borderColor: "rgba(179,181,198,1)",
	          pointBorderColor: "#fff",
	          pointBackgroundColor: "rgba(179,181,198,1)",
	          data: [8.77,55.61,21.69,6.62,6.82]
	        }, {
	          label: "2050",
	          fill: true,
	          backgroundColor: "rgba(255,99,132,0.2)",
	          borderColor: "rgba(255,99,132,1)",
	          pointBorderColor: "#fff",
	          pointBackgroundColor: "rgba(255,99,132,1)",
	          pointBorderColor: "#fff",
	          data: [25.48,54.16,7.61,8.06,4.45]
	        }
	      ]
	    },
	    options: {
	      title: {
	        display: true,
	        text: 'Distribution in % of world population'
	      }
	    }
	});
} 
 else{
	document.getElementById("blur-radar-chart").outerHTML="";
	document.getElementById("no-data").outerHTML="";
	new Chart(document.getElementById("radar-chart"), {	
	    type: 'radar',
	    data: {
	      labels: ["키", "몸무게", "근육량", "지방량", "bmi"],
	      datasets: [
	        {
	          label: "평균",
	          fill: true,
	          backgroundColor: "rgba(179,181,198,0.2)",
	          borderColor: "rgba(179,181,198,1)",
	          pointBorderColor: "#fff",
	          pointBackgroundColor: "rgba(179,181,198,1)",
	          data: [${avgHeight},${avgWeight},${avgMuscle},${avgFat},avgBmi]
	        }, {
	          label: userId,
	          fill: true,
	          backgroundColor: "rgba(255,99,132,0.2)",
	          borderColor: "rgba(255,99,132,1)",
	          pointBorderColor: "#fff",
	          pointBackgroundColor: "rgba(255,99,132,1)",
	          pointBorderColor: "#fff",
	          data: [userHeight,userWeight,userMuscle,userFat,userBMI]
	        }
	      ]
	    },
	    options: {
	      title: {
	        display: true,
	        text: '횐님들 데이터 한눈에보기'
	      }
	    }
	}); 
}

</script>

</html>