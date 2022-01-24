<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
<link href="../resources/css/exercise.css" rel="stylesheet" />

</head>
<body>
<jsp:include page="/WEB-INF/views/hellth/header3.jsp" />
   <div id="substance" class="rb-box">
        <div class="sub_header">
            <nav class="breadcrumb">
                
            </nav>
                                <h1 class="sub_title">운동 정보</h1>
                            </div><!--E:sub_header-->
        <div class="subcontents">
<script type="text/javascript">
// <!--kcal_cart("");-->
</script>
<div class="obesity calorie">
    <div class="calorie_H">
        <span>종류별 운동 정보</span>
        <!-- <p>
            <form id='searchForm' action="" method='get'> 
            <input type="text" value="" name="food" id="kcal_search_name"
                onkeypress="if (event.keyCode==13) {return alert('검색'); }"
                placeholder=" 운동명 검색해 보세요." class="inp_txt">
            <a href="#" id="search-btn" class="inp_btn">검색</a>
            <button class='btn btn-info'>검색</button>
            </form>
            javascript:kcal_search('1','name_up');
        </p> -->
    </div>
    <div class="excercise_kind">
        <ul>
            <li><button style="outline:none;" type="button" class="btnEx btn-hov" id="aerobic" class="food_on">유산소</button></li>
            <li style="margin-top:5px;"><button style="outline:none;" type="button" class="btnEx btn-hov" id="anaerobic">무산소</button></li>
        </ul>
    </div>

    <!-- 이 부분을 스크립트로 무산소 유산소 클릭 시 뜨는 것이 다르게 적용할 예정-->
    <div class="excercise_list">
        <ul id="kcal_category2">
        </ul>
    </div>
    <!-- 이 부분을 스크립트로 무산소 유산소 클릭 시 뜨는 것이 다르게 적용할 예정 -->

</div>
<div class="calculator">
<div class="calorie_chart">
<div id="kcal_list">
    <p class="chartH font_D"><span id="total"> <strong>운동 List</strong></span></p>
        <div class="pre_view">
            <ul class="nutrients" id="cardioCard">
            </ul>
        </div>
</div>
	</div><!--E:calorie_chart-->
		<div class="calorie_list" id="basic-modal">
			<div class="calorie_view">
			    
		        <h3><input type="date" id='currentDate' readonly="readonly"></h3>
		        <!-- <div class="list_more" id="cart_list">
			        <ul class="kcalList"> 
			        	   	
			        </ul>
		        </div>E:list_more -->
		        <div class="list_more2" id="cart_list">
				<button id="movePage" class="btn_sv1 btn btn-dark">💪운동 저장💪<br>
				하러 이동☆ </button> 
		        </div>	 
		        
			
			</div><!--E:calorie_view-->
			</div><!--E:calorie_list-->
			</div><!--E:calculator-->
        </div><!--E:subcontents-->
    </div>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
    
    var clist = new Array();
	const cardioName = [];
	<c:forEach items="${cardioList}" var="item">
		clist.push({
			exercise_cardio:"${item.exercise_cardio}"
			, kcal:"${item.kcal}"
			, img:"${item.img}"
			, point:"${item.point}"
			, description:"${item.description}"
			});
	</c:forEach>
	
	var cardioKind = "";
	for(var i=0;i<clist.length;i++){
		cardioName[i] = clist[i].exercise_cardio;
		cardioKind += "<li style='margin-bottom:10px;'>"+cardioName[i]+"</li>";
	}
	
	$("#kcal_category2").append(cardioKind);
	
	var cardioStr ="";
	for(var i=0; i<clist.length;i++){
	    cardioStr +="<li class='cell'><div class='col-13'> <div class='card'><div class='card-header'>"+clist[i].exercise_cardio+"</div>";
		cardioStr +="<img class='imgSize' src='"+clist[i].img+"' alt='' /><div class='card-body'>";
		cardioStr +="<h5 class='card-title'><strong>"+clist[i].exercise_cardio+" </strong> [10분당 소비 Kcal : " +clist[i].kcal+" </h5><br>"
		cardioStr += "<p class='card-text'>"+clist[i].description+"</p></div></div></div></li>"              
	}
	console.log(cardioStr);
	$("#kcal_list").append(cardioStr);
    
	var wlist = new Array();
	
	const weightName = [];
		
		<c:forEach items="${weightList}" var="item">
			wlist.push({
					exercise_part:"${item.exercise_part}"
						,exercise_kinds:"${item.exercise_kinds}"
						,point:"${item.point}"
						,ex_explain:"${item.ex_explain}"
						,ex_video_link:"${item.ex_video_link}"});
		</c:forEach>
	
	for(var i=0;i<wlist.length;i++){
		weightName[i] = wlist[i].exercise_part;	
	}
	const set = new Set(weightName);
	
	const warr = [...set];
    
	var backEx = new Array();
	
	var chestEx = new Array();
	
	var shoulderEx = new Array();
	var legEx = new Array();
	for(var j=0;j<wlist.length;j++){
		if(warr[3] == wlist[j].exercise_part){
			legEx.push(wlist[j].exercise_kinds);
		}	
	}
	
	
	
	
	
	var temp = {};
	temp['유산소'] = cardioName;
	temp['무산소'] = warr;
	temp[warr[0]] = backEx;
	temp[warr[1]] = chestEx;
	temp[warr[2]] = shoulderEx;
	temp[warr[3]] = legEx;
	
	$("#aerobic").click(function(e){
		$("#kcal_category2 li").remove()
		$("#kcal_list li").remove();
		$('#kcal_list div').remove();
		$("#kcal_list p").remove();
		/* $("#kcal_category2 li").remove();
		$('#kcal_category2 button').remove();
		$("#kcal_category2").append(cardioKind); 
		$("#cardioCard li").remove();
		$("#kcal_list p").remove(); */
		$("#kcal_category2").append(cardioKind);
		var cardioStr ="";
		cardioStr += "<p class='chartH font_D'><span id='total'> <strong>운동 List</strong></span></p><div class='pre_view'><ul class='nutrients' id='cardioCard'>";
		for(var i=0; i<clist.length;i++){
		    cardioStr +="<li class='cell'><div class='col-13'> <div class='card'><div class='card-header'>"+clist[i].exercise_cardio+"</div>";
			cardioStr +="<img class='imgSize' src='"+clist[i].img+"' alt='' />";
			cardioStr +="<div class='card-body'><h5 class='card-title'><strong>"+clist[i].exercise_cardio+" </strong> [10분당 소비 Kcal : " +clist[i].kcal+" </h5><br>"
			cardioStr += "<p class='card-text'>"+clist[i].description+"</p></div></div></div></li>"              
		}
		
		
		$("#kcal_list").append(cardioStr);

	});
	
	$("#anaerobic").click(function(e){
		$("#kcal_category2 li").remove()
		$("#kcal_list li").remove();
		$('#kcal_list div').remove();
		$("#kcal_list p").remove();
		
		/* $("#kcal_list li").remove();
		$("#kcal_list p").remove(); */
		var weightKind = "";
		var weightStr = "";
		console.log(warr.length);
		for(var i=0;i<warr.length;i++){
			weightKind += "<li><a href='#warr"+i+"' class='btn-hov'>"+warr[i]+"</a></li>";
		}
		$("#kcal_category2").append(weightKind);
		
		weightStr += "<p id='warr0' class='chartH font_D'><span id='total'> <strong>"+warr[0]+" List</strong></span></p><div class='pre_view'><ul class='nutrients' id='cardioCard'>";
        
		for(var i=0;i<wlist.length;i++){
			if(warr[0]==wlist[i].exercise_part){
				weightStr +="<li class='cell'><div class='col-13'> <div class='card'><div class='card-header'>"+wlist[i].exercise_kinds+"</div>";
				weightStr +="<div class='embed-responsive embed-responsive-16by9'><iframe class='embed-responsive-item' src='"+wlist[i].ex_video_link+"'></iframe></div>";
				weightStr +="<div class='card-body'><h5 class='card-title'><strong>"+wlist[i].exercise_kinds+" </strong></h5><br>";
				weightStr +="<p class='card-text'>"+wlist[i].ex_explain+"</p></div></div></div></li>";
			}
		}
		weightStr+="</ul></div>";
		weightStr += "<p id='warr1' class='chartH font_D' style='margin-top: 92%;'><span id='total'> <strong>"+warr[1]+" List</strong></span></p><div class='pre_view'><ul class='nutrients' id='cardioCard'>";
        
		for(var i=0;i<wlist.length;i++){
			if(warr[1]==wlist[i].exercise_part){
				weightStr +="<li class='cell'><div class='col-13'> <div class='card'><div class='card-header'>"+wlist[i].exercise_kinds+"</div>";
				weightStr +="<div class='embed-responsive embed-responsive-16by9'><iframe class='embed-responsive-item' src='"+wlist[i].ex_video_link+"'></iframe></div>";
				weightStr +="<div class='card-body'><h5 class='card-title'><strong>"+wlist[i].exercise_kinds+" </strong></h5><br>";
				weightStr +="<p class='card-text'>"+wlist[i].ex_explain+"</p></div></div></div></li>";
			}
		}
		weightStr+="</ul></div>";
		weightStr += "<p id='warr2' class='chartH font_D' style='margin-top: 92%;'><span id='total'> <strong>"+warr[2]+" List</strong></span></p><div class='pre_view'><ul class='nutrients' id='cardioCard'>";
        
		for(var i=0;i<wlist.length;i++){
			if(warr[2]==wlist[i].exercise_part){
				weightStr +="<li class='cell'><div class='col-13'> <div class='card'><div class='card-header'>"+wlist[i].exercise_kinds+"</div>";
				weightStr +="<div class='embed-responsive embed-responsive-16by9'><iframe class='embed-responsive-item' src='"+wlist[i].ex_video_link+"'></iframe></div>";
				weightStr +="<div class='card-body'><h5 class='card-title'><strong>"+wlist[i].exercise_kinds+" </strong></h5><br>";
				weightStr +="<p class='card-text'>"+wlist[i].ex_explain+"</p></div></div></div></li>";
			}
		}
		weightStr+="</ul></div>";
		weightStr += "<p id='warr3' class='chartH font_D' style='margin-top: 40%;'><span id='total'> <strong>"+warr[3]+" List</strong></span></p><div class='pre_view'><ul class='nutrients' id='cardioCard'>";
        
		for(var i=0;i<wlist.length;i++){
			if(warr[3]==wlist[i].exercise_part){
				weightStr +="<li class='cell'><div class='col-13'> <div class='card'><div class='card-header'>"+wlist[i].exercise_kinds+"</div>";
				weightStr +="<div class='embed-responsive embed-responsive-16by9'><iframe class='embed-responsive-item' src='"+wlist[i].ex_video_link+"'></iframe></div>";
				weightStr +="<div class='card-body'><h5 class='card-title'><strong>"+wlist[i].exercise_kinds+" </strong></h5><br>";
				weightStr +="<p class='card-text'>"+wlist[i].ex_explain+"</p></div></div></div></li>";
			}
		}
		weightStr+="</ul></div>";
		console.log(weightStr);
		$("#kcal_list").append(weightStr);
	});
	
	var backEx = new Array();
	for(var j=0;j<wlist.length;j++){
		if(warr[3] == wlist[j].exercise_part){
			legEx.push(wlist[j].exercise_kinds);
		}	
	}
	
	
	</script>
	<script>

    $(document).ready(function(){
    	var date1 = new Date();
    	date1 = new Date(date1.getFullYear(), date1.getMonth(), date1.getDate()+1); // input expects requires year, month, day

    	document.getElementById('currentDate').valueAsDate = date1

    	
    	$("#movePage").click(function(){		
    		$(location).attr('href','/health/exercise_add');
    	});
    	
    	
    	
    });
    </script>
</body>
</html>