<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/exercise_add.css" rel="stylesheet" />
</head>
<body>
<jsp:include page="/WEB-INF/views/hellth/header3.jsp" />
    <div id="substance" class="rb-box">
        <div class="sub_header">
            <nav class="breadcrumb">
            </nav>
            <h1 class="sub_title">운동 추가</h1>
            </div><!--E:sub_header-->
        <div class="subcontents">
<div class="calculator">
<div class="calorie_chart">
<div id="kcal_list">
    <!-- <p class="chartH font_D"><span id="total"> <strong>운동 List</strong></span> -->
        <!-- <a href="calorie-calculator.html?page=1&amp;depth1=01&amp;depth2=food&amp;sort=kcal_up" class="">칼로리순</a><a href="calorie-calculator.html?page=1&amp;depth1=01&amp;depth2=food&amp;sort=name_up" class="sort_on">가나다순</a></p> -->
        
        <div class="pre_view">
            <ul class="nutrients">
                <li>
                <div class="row">
                    <div class="col-md-2 mb-2">
                        <label for="validationCustom03">유 / 무산소:</label>
                        <select class="form-control form-control-lg" name="category" id="category" onchange="ChangeExList()" required>
                          <option value="" selected disabled>Choose... </option>
                          <option value="유산소">유산소</option>
                          <option value="무산소">무산소</option>
                        </select>
                      
                    </div>
                    <div class="col-md-2 mb-2" id="kindDiv">
                        <label for="validationCustom04">분류 :</label>
                       <select class="form-control form-control-lg" id="kindList" name="kind" onchange="ChangeKind()" ></select>
                    </div>
                    <div class="col-md-3 mb-3" id="exerciseDiv">
                        <label for="validationCustom05">운동명 :</label>
                       <select class="form-control form-control-lg" id="exerciseList" name="exerciseName" onchange="ChangeExName()"></select>
                    </div>
                    <div class="col-md-2 mb-2" id="timerDiv">
                        <label for="validationCustom06">시간(분) :</label>
                       <input type="text" class="form-control form-control-lg" id="timer" name="timer">
                    </div>
                    <div class="col-md-2 mb-2" id="countSetDiv">
                        <label for="validationCustom07">세트(10회) :</label>
                       <input type="text" class="form-control form-control-lg" id="countSet" name="countSet">
                    </div>
                    
                    <div class="col-md-1 mb-3">
                        <button id="addButton" class="btn btn-primary">추가</button>
                    </div>            
                  </div>
                </li>
                <li>
                    <div id="addImgDiv">
                    	<div style='width:50px; background:white'></div>
                    </div>
                </li>
            </ul>
        </div>
</div>
</div><!--E:calorie_chart-->
<div class="calorie_list" id="basic-modal">
			<div class="calorie_view">
			<form method="post" name="exerciseForm" action="/health/addExercise">
		        <h3><button type="button" class="btn-st"><span class="prev_date">[</span></button><input type="date" id='currentDate' onchange="hz(this.value)"><button type="button" class="btn-st"><span class="next_date">]</span></button></h3>
		        <div class="list_more" id="cart_list">
		       
			        <ul class="kcalList">    	
			        </ul>
			    
		        </div><!--E:list_more-->
		        <div class="list_more2" id="cart_list">
					<button class="btn_sv1 btn btn-dark">저장하기</button> 
					 </form>	
					 <button type="button" id='resetList' class='btn_sv2 btn btn-danger'>초기화</button>
		        </div>
		        
		        	
			
			</div><!--E:calorie_view-->
			
	</div><!--E:calorie_list-->
</div>
</div>
<script>
$(document).ready(function(){
	var kcalUL=$(".kcalList");
	var weightCnt = 0;
	var cardioCnt = 0;
	var category;
	var wpoint =0.0;
	var cpoint=0.0;
	
	$("#resetList").click(function(e){
		
		$(".kcalList li").remove();
		weightCnt = 0;
		cardioCnt = 0;
		wpoint = 0.0;
		cpoint =0.0;

	});

	
	$("#addButton").click(function(e){
		
		var answer = confirm("운동을 추가하시겠습니까?");
		if(answer){

			var str = "";
			category = $("#category option:selected").val();
			var kind = $("#kindList option:selected").val();
			var exercise = $("#exerciseList option:selected").val();
			if(exercise === undefined){
				alert("선택하시고 추가해주세요");
				return;
			}
			var date = $("#currentDate").val();
			var countSet = $("#countSet").val();
			var timer = $("#timer").val();
			 
			
			
			if(category =="유산소"){
				cpoint += timer*0.01;
				if(timer ==""){
					alert("운동 시간을 입력해주세요.");
					return;
				}
				str += "<li><tr><td><input class='basicBorder' readonly='readonly' style='text-align:center' name='cardioList["+cardioCnt+"].exercise_cardio' type='text' value='"+exercise+"'/></td>";
				str += "<td><input class='basicBorder' style='text-align:right' name='cardioList["+cardioCnt+"].cardio_time' type='text' value='"+timer+"' readonly='readonly'/>분</td>";
				str += "<input type='hidden' name='cardioList["+cardioCnt+"].exer_date' value='"+date+"'><input type='hidden' name='cardioList["+cardioCnt+"].userId' value='${member.userId}'/></tr></li>";
				/* str += "<tr><td></td><td></td><td></td></tr>";
				str += "<div style='margin-left:10px; margin-top:5px; width:100%;'><li><input readonly='readonly' style=' border:none; outline:none; background:rgba(255,255,255,0); width:30%;' name='cardioList["+cardioCnt+"].exercise_cardio' type='text' value='"+exercise+"'/> ";
				str += " <input style=' border:none; outline:none; background:rgba(255,255,255,0); text-align: right; margin-left: 3%;  width:8%;' name='cardioList["+cardioCnt+"].cardio_time' type='text' value='"+timer+"' readonly='readonly'/>분";
				str += "<input type='hidden' name='cardioList["+cardioCnt+"].exer_date' value='"+date+"'><input type='hidden' name='cardioList["+cardioCnt+"].userId' value='conan'/><button type='button' class='btn1 btn-warning btn-circle'>X</button><br></li></div>"; */
				
				cardioCnt++;
				timer = 0;
			}else if(category == "무산소"){
				wpoint += countSet*0.1;
				if(countSet ==""){
					alert("운동 세트를 입력해주세요.");
					return;
				}
				str += "<li><tr><td><input class='basicBorder' readonly='readonly' style='text-align:center' name='weightList["+weightCnt+"].exercise_kinds' type='text' value='"+exercise+"'/></td>";
				str += "<td><input class='basicBorder' style='text-align:right' name='weightList["+weightCnt+"].weight_set' type='text' value='"+countSet+"' readonly='readonly'/>세트</td>";
				str += "<input type='hidden' name='weightList["+weightCnt+"].date' value='"+date+"'><input type='hidden' name='weightList["+weightCnt+"].userId' value='${member.userId}'/></tr></li>";
			
			
				/* str += "<div style='margin-left:10px; margin-top:5px; width:100%;'><li><input readonly='readonly' style=' border:none; outline:none; background:rgba(255,255,255,0); width:15%;'type='text' value='"+kind+"'/>";
				str +="<input readonly='readonly' style=' border:none; outline:none; background:rgba(255,255,255,0); width:30%;' name='weightList["+weightCnt+"].exercise_kinds' type='text' value='"+exercise+"'/> ";
				str += " <input style=' border:none; outline:none; background:rgba(255,255,255,0); text-align: right; margin-left: 3%;  width:8%;' name='weightList["+weightCnt+"].weight_set' type='text' value='"+countSet+"' readonly='readonly'/>세트";
				str += "<input type='hidden' name='weightList["+weightCnt+"].date' value='"+date+"'><input type='hidden' name='weightList["+weightCnt+"].userId' value='conan'/><button type='button' class='btn1 btn-warning btn-circle'>X</button><br></li></div>"; */
				
				weightCnt++;
				countSet=0;
			}
		
			
			console.log(str);
			kcalUL.append(str);
			
			
			
		}
	});
});
</script>
<script>

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
		for(var j=0;j<wlist.length;j++){
			if(warr[0] == wlist[j].exercise_part){
				backEx.push(wlist[j].exercise_kinds);
			}	
		}
		var chestEx = new Array();
		for(var j=0;j<wlist.length;j++){
			if(warr[1] == wlist[j].exercise_part){
				chestEx.push(wlist[j].exercise_kinds);
			}	
		}
		var shoulderEx = new Array();
		for(var j=0;j<wlist.length;j++){
			if(warr[2] == wlist[j].exercise_part){
				shoulderEx.push(wlist[j].exercise_kinds);
			}	
		}
		var legEx = new Array();
		for(var j=0;j<wlist.length;j++){
			if(warr[3] == wlist[j].exercise_part){
				legEx.push(wlist[j].exercise_kinds);
			}	
		}
	
	var clist = new Array();
	const cardioName = [];
	<c:forEach items="${cardioList}" var="item">
		clist.push({
			exercise_cardio:"${item.exercise_cardio}"
			, kcal:"${item.kcal}"
			, img:"${item.img}"
			, point:"${item.point}"
			});
	</c:forEach>
	
	for(var i=0;i<clist.length;i++){
		cardioName[i] = clist[i].exercise_cardio;	
	}
	
	/* const set2 = new Set(cardioName);
	
	const carr = [...set2]; */
</script>

<script>
var date1 = new Date();
date1 = new Date(date1.getFullYear(), date1.getMonth(), date1.getDate()+1); // input expects requires year, month, day

document.getElementById('currentDate').valueAsDate = date1


var catAndActs = {};
catAndActs['유산소'] = cardioName;
catAndActs['무산소'] = warr;
catAndActs[warr[0]] = backEx;
catAndActs[warr[1]] = chestEx;
catAndActs[warr[2]] = shoulderEx;
catAndActs[warr[3]] = legEx;

var categoryList = document.getElementById("category");
var kindDiv = document.getElementById("kindDiv");
var exerciseDiv = document.getElementById("exerciseDiv");
var countSetDiv = document.getElementById("countSetDiv");
var timerDiv = document.getElementById("timerDiv");
var addImgDiv = document.getElementById("addImg")

var kindList = document.getElementById("kindList");
var exerciseList = document.getElementById("exerciseList");
var img="";
var ifm="";


kindDiv.style.display="none";
exerciseDiv.style.display="none";
countSetDiv.style.display="none";
timerDiv.style.display="none";



 function ChangeExList() {
    var selCategory = categoryList.options[categoryList.selectedIndex].value;
    if(selCategory=="유산소"){
    	kindDiv.style.display="none";
    	exerciseDiv.style.display="block";
    	countSetDiv.style.display="none";
    	
    	while(exerciseList.options.length) {
        	exerciseList.remove(0);
        } 
    	
    	var cats = catAndActs[selCategory];
        for (var i = 0; i < cats.length; i++) {
            var cat = new Option(cats[i], cardioName[i]);
            exerciseList.options.add(cat);
        }
        timerDiv.style.display="block";
        var exercise = $("#exerciseList option:selected").val();
        
        for(var i=0;i<clist.length;i++){
        	if(exercise == clist[i].exercise_cardio){
        		img = clist[i].img;
        	}
        	/* $('#addImgDiv img').html('');
        	$('#addImgDiv iframe').html(''); */	
        }
        $("#addImgDiv img").remove();
        $("#addImgDiv iframe").remove();
        var str = "<img src='"+img+"' class='addImg' alt='이미지 없음'/>"
		$("#addImgDiv").append(str);
		
    }else if(selCategory=="무산소"){
    	timerDiv.style.dipaly="none";
    	while(exerciseList.options.length) {
        	exerciseList.remove(0);
        } 
    	
    	while (kindList.options.length) {
    		kindList.remove(0);	
        }
    	var cats = catAndActs[selCategory];
        for (var i = 0; i < cats.length; i++) {
            var cat = new Option(cats[i], warr[i]);
            kindList.options.add(cat);
        }
        kindDiv.style.display="block";
        
        var selKind = kindList.options[kindList.selectedIndex].value; 

        if(selKind == warr[0]){
        	cats = catAndActs[selKind];
        	while(exerciseList.options.length) {
            	exerciseList.remove(0);
            }
        	for (var i = 0; i < cats.length; i++) {
                var cat = new Option(cats[i], backEx[i]);
                exerciseList.options.add(cat);
            }
        }else if(selKind == 1){
        	cats = catAndActs[selKind];
        	while(exerciseList.options.length) {
            	exerciseList.remove(0);
            }
        	for (var i = 0; i < cats.length; i++) {
                var cat = new Option(cats[i], i);
                exerciseList.options.add(cat);
            }
        }else if(selKind == 2){
        	cats = catAndActs[selKind];
        	while(exerciseList.options.length) {
            	exerciseList.remove(0);
            }
        	for (var i = 0; i < cats.length; i++) {
                var cat = new Option(cats[i], i);
                exerciseList.options.add(cat);
            }
        }else if(selKind == 3){
        	cats = catAndActs[selKind];
        	while(exerciseList.options.length) {
            	exerciseList.remove(0);
            }
        	for (var i = 0; i < cats.length; i++) {
                var cat = new Option(cats[i], i);
                exerciseList.options.add(cat);
            }
        }
        var exercise = $("#exerciseList option:selected").val();
        for(var i=0;i<wlist.length;i++){
        	if(exercise == wlist[i].exercise_kinds){
        		ifm = wlist[i].ex_video_link;
        	}
        	/* $('#addImgDiv img').html('');
        	$('#addImgDiv iframe').html(''); */	
        }
        $("#addImgDiv img").remove();
        $("#addImgDiv iframe").remove();
        var str = "<iframe  src='"+ifm+"' class='addImg' alt='이미지 없음'/></iframe>"
		$("#addImgDiv").append(str);
                
        timerDiv.style.display="none";
        exerciseDiv.style.display="block";
        countSetDiv.style.display="block";
    } 
 }
    
 
    function ChangeKind(){
    	timerDiv.style.display="none";
    	var selKind = kindList.options[kindList.selectedIndex].value; 

       if(selKind == warr){
       	cats = catAndActs[selKind];
       	while(exerciseList.options.length) {
           	exerciseList.remove(0);
           }
       	for (var i = 0; i < cats.length; i++) {
               var cat = new Option(cats[i], backEx[i]);
               exerciseList.options.add(cat);
           }
       }else if(selKind == warr[1]){
       	cats = catAndActs[selKind];
       	while(exerciseList.options.length) {
           	exerciseList.remove(0);
           }
       	for (var i = 0; i < cats.length; i++) {
               var cat = new Option(cats[i], chestEx[i]);
               exerciseList.options.add(cat);
           }
       }else if(selKind == warr[2]){
       	cats = catAndActs[selKind];
       	while(exerciseList.options.length) {
           	exerciseList.remove(0);
           }
       	for (var i = 0; i < cats.length; i++) {
               var cat = new Option(cats[i], shoulderEx[i]);
               exerciseList.options.add(cat);
           }
       }else if(selKind == warr[3]){
       	cats = catAndActs[selKind];
       	while(exerciseList.options.length) {
           	exerciseList.remove(0);
           }
       	for (var i = 0; i < cats.length; i++) {
               var cat = new Option(cats[i], legEx[i]);
               exerciseList.options.add(cat);
           }
       } 
       var exercise = $("#exerciseList option:selected").val();
       for(var i=0;i<wlist.length;i++){
       	if(exercise == wlist[i].exercise_kinds){
       		ifm = wlist[i].ex_video_link;
       	}
       	/* $('#addImgDiv img').html('');
       	$('#addImgDiv iframe').html(''); */	
       }
       $("#addImgDiv img").remove();
       $("#addImgDiv iframe").remove();
       var str = "<iframe  src='"+ifm+"' class='addImg' alt='이미지 없음'/></iframe>"
		$("#addImgDiv").append(str);

       exerciseDiv.style.display="block";
       countSetDiv.style.display="block";
    } 
    
    
    function ChangeExName(){
    	var exercise = $("#exerciseList option:selected").val();
    	for(var i=0;i<clist.length;i++){
        	if(exercise == clist[i].exercise_cardio){
        		img = clist[i].img;
        		ifm="";
        	}       		
        }
    	
    	for(var i=0;i<wlist.length;i++){
           	if(exercise == wlist[i].exercise_kinds){  		
           		ifm = wlist[i].ex_video_link;
           		img="";
           	}
         }
    	
        $("#addImgDiv img").remove();
        $("#addImgDiv iframe").remove();
       
        var str;
        if(ifm == ""){ 	
        	str = "<img src='"+img+"' class='addImg' alt='이미지 없음'/>";
        }else{	
        	str = "<iframe  src='"+ifm+"' class='addImg' alt='이미지 없음'/></iframe>";
        }
		$("#addImgDiv").append(str); 

    } 
</script>
<script>
	
</script>
</body>
</html>;