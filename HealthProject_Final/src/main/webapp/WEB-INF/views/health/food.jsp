<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script>
		function test() {
		    window.onbeforeunload = function (e) {
                    return 0;
		    };
		}
	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
<link href="../resources/css/food_add.css" rel="stylesheet" />



		

</head>
<body onload="test();">
<jsp:include page="/WEB-INF/views/hellth/header3.jsp" />
 <div id="substance" class="rb-box">
        <div class="sub_header">
            <nav class="breadcrumb">
            </nav>
                                <h1 class="sub_title">식단 추가</h1>
                            </div><!--E:sub_header-->
        <div class="subcontents">
<script type="text/javascript">
// <!--kcal_cart("");-->
</script>
<div class="obesity calorie">
	<div class="calorie_H"><span>식단 Search</span> 
		<form id ="searchForm" action="/health/food" method='get'>
			<input type="text" name="keyword" placeholder=" 음식명을 검색해 보세요." class="inp_txt">
			<input type='hidden' name='pageNum' value="${pageMaker.cri.pageNum }"/>
			<input type='hidden' name='amount' value="${pageMaker.cri.amount }"/>
			<input type='hidden' name='category' value='${pageMaker.cri.category }'>
			<button class='inp_btn btn btn-info'>검색</button>
		</form>
	</div>
		<div class="food_list">    
			<ul id="kcal_category2">
					<c:forEach var="category" items="${first_cls }">
					<li><a href="/health/food?category=${category.first_cls}">${category.first_cls }</a></li>
					</c:forEach>
			</ul>
		</div><!--E:food_list-->
</div><!--E:obesity-->
<div class="calculator">
	<div class="calorie_chart">
		<div id="kcal_list">
		    <!-- <p class="chartH font_D"><span id="total">총 <strong></strong>건</span><a href="calorie-calculator.html?page=1&amp;depth1=01&amp;depth2=food&amp;sort=kcal_up" class="">칼로리순</a><a href="calorie-calculator.html?page=1&amp;depth1=01&amp;depth2=food&amp;sort=name_up" class="sort_on">가나다순</a></p> -->
		    <p class="chartH font_D"><span id="total"><strong>List</strong></span></p>
			<c:forEach var="food" items="${list }">
				<div class="chart">
			        <div class="pre_view">
			            <ul class="foodList">
			            	<li ><p class="colr_pp">${food.foodNo }.&nbsp;&nbsp;&nbsp;${food.foodName }&nbsp;&nbsp;&nbsp; (1회 제공량 : ${food.amount }g)</p></li><br><br><br>
			            	<li ><strong class="nutrients">칼로리 : <fmt:formatNumber value="${food.kcal }" pattern="#.#" />kcal</strong> &nbsp;&nbsp;&nbsp;
			           		탄수화물 : <fmt:formatNumber value="${food.carbo }" pattern="#.#" />g&nbsp;&nbsp;
			                단백질 :<fmt:formatNumber value="${food.protein }" pattern="#.#" />g&nbsp;&nbsp;
			                지방 : <fmt:formatNumber value="${food.fat }" pattern="#.#" />g&nbsp;&nbsp;
			                당 : <fmt:formatNumber value="${food.sugar }" pattern="#.#" />g&nbsp;&nbsp;</li>
			                <li><input class="inp_box inp_loc" id="${food.foodNo}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" type="text" name="dos" placeholder=" 양을 입력하세요."></li>
			            	<li ><button data-food="${food.foodNo }" class="btn btn-primary btn-loc" id="${food.foodNo}" >담기</button></li>
			            </ul>  
			        </div>
		   	 	</div><!--E:chart-->
			</c:forEach>
		    <!-- <div class="btn_wrap" style="width:614px;"> -->
	   
		        <div class="panel-body">
		        <div class='pull-right'>
						<ul class="pagination">
							<c:if test="${pageMaker.prev }">
								<li class="paginate_button previous"><a href="${pageMaker.startPage-1 }">Previous</a></li>
							</c:if>
							<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
								<li class="paginate_button ${pageMaker.cri.pageNum==num?" active":""}"><a href="${num}">${num }</a></li>
							</c:forEach>
							<c:if test="${pageMaker.next }">
								<li class="paginate_button next"><a href="${pageMaker.endPage+1 }">Next</a></li>
							</c:if>
						</ul>
					</div><!-- Pagination 끝 -->
					<form id='actionForm' action="/health/food" method='get'>
						<input type='hidden' name='category' value='${pageMaker.cri.category }'>
						<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
						<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
						<input type='hidden' name='keyword' value='${pageMaker.cri.keyword }'>
					</form>
		            <!-- <a href="#" class="p_on">1</a><a href="?page=2&amp;keyfield=&amp;key=&amp;depth1=01&amp;depth2=food&amp;sort=name_down"> 2 </a><a href="?page=3&amp;keyfield=&amp;key=&amp;depth1=01&amp;depth2=food&amp;sort=name_down"> 3 </a><a href="?page=4&amp;keyfield=&amp;key=&amp;depth1=01&amp;depth2=food&amp;sort=name_down"> 4 </a><a href="?page=5&amp;keyfield=&amp;key=&amp;depth1=01&amp;depth2=food&amp;sort=name_down"> 5 </a><a href="?page=6&amp;keyfield=&amp;key=&amp;depth1=01&amp;depth2=food&amp;sort=name_down"> 6 </a><a href="?page=7&amp;keyfield=&amp;key=&amp;depth1=01&amp;depth2=food&amp;sort=name_down"> 7 </a><a href="?page=8&amp;keyfield=&amp;key=&amp;depth1=01&amp;depth2=food&amp;sort=name_down"> 8 </a><a href="?page=9&amp;keyfield=&amp;key=&amp;depth1=01&amp;depth2=food&amp;sort=name_down"> 9 </a><a href="?page=10&amp;keyfield=&amp;key=&amp;depth1=01&amp;depth2=food&amp;sort=name_down"> 10 </a><span class="pg_next"><a href="?page=11&amp;keyfield=&amp;key=&amp;depth1=01&amp;depth2=food&amp;sort=name_down">&nbsp;</a></span> -->
		        </div>
		    <!-- </div> -->
		</div>
	</div><!--E:calorie_chart-->
	<div class="calorie_list" id="basic-modal">
			<div class="calorie_view">
			<form method="post" name="kcalForm" action="/health/kcalCal">
		        <h3><button type="button" class="btn-st"><span class="prev_date">[</span></button><input type="date" id='currentDate' onchange="hz(this.value)"><button type="button" class="btn-st"><span class="next_date">]</span></button></h3>
		        <div class="list_more" id="cart_list">
		       
			        <ul class="kcalList">    	
			        </ul>
			    
		        </div><!--E:list_more-->
		        <div class="list_more2" id="cart_list">
				<button class="btn_sv1 btn btn-dark">저장하기</button> 
		        </div>	 
		        
			</form>
			</div><!--E:calorie_view-->
			
	</div><!--E:calorie_list-->
</div><!--E:calculator-->
</div>
</div>
<script src="/resources/js/reply.js"></script>
<script type="text/javascript">
var date1 = new Date();
date1 = new Date(date1.getFullYear(), date1.getMonth(), date1.getDate()+1); // input expects requires year, month, day

document.getElementById('currentDate').valueAsDate = date1

var date = new Date();

const formatDate = (current_datetime)=>{
    let formatted_date = current_datetime.getFullYear() + "-" + (current_datetime.getMonth() + 1) + "-" + current_datetime.getDate() + " 00:00:00";
    return formatted_date;
}


date = formatDate(date);
/* document.getElementById('currentDate').valueAsDate = formatDate(date); */ 
	//formatDate(date);


function hz(val) { 
	date = val;
}

$(document).ready(function(){
	var kcalUL=$(".kcalList");
	var count = 0;
	
	
	$(".kcalList"). on("click","button",function(e){
		
		var targetDiv = $(this).closest("div");
		
		var targetLi =$(this).closest("li");
		
		console.log(targetDiv);
		
		targetDiv.remove();
		count--;
	});
	
	$(".foodList li").on("click","button",function(e){
		var answer = confirm("식단을 추가하시겠습니까?");
		if(answer){
			var str="";
			var foodName;
			var foodKcal;		
			var foodNo = $(this).data("food");	
			var foodAmount = document.getElementById(foodNo).value;
			if(foodAmount ==""){
				alert("양을 입력해주세요.");
				return;
			}
			/* alert(foodAmount); */
			healthService.get(foodNo, function(food){
				foodNo = food.foodNo;
				foodName = food.foodName;
				foodKcal = food.kcal;
				var total = (parseFloat(foodKcal)*Number(foodAmount)).toFixed(2);

				/* str+="<li style='color:black;'>";
				str+=foodName + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
				str+=foodAmount + "회 제공량&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
				str+= " = &nbsp;&nbsp;&nbsp;&nbsp;" + total +"Kcal</li>"; */
				console.log(count);
				str += "<div style='margin-top:5px; width:100%;'><li><input readonly='readonly' style=' border:none; outline:none; background:rgba(255,255,255,0); width:30%;' name='udList["+count+"].foodName' type='text' value='"+foodName+"'/> ";
				str += " <input style='border:none; outline:none; background:rgba(255,255,255,0); text-align: right; margin-left: 3%;  width:8%;' name='"+foodNo+"' type='text' value='"+foodAmount+"' readonly='readonly'/>회 량";
				str +="&nbsp;<input readonly='readonly' style='border:none; outline:none; background:rgba(255,255,255,0); text-align: right; margin-left: 3%; width:20%;' name='udList["+count+"].personer_dos' type='text' value='"+total+"'/> Kcal"
				str += "<input type='hidden' name='udList["+count+"].foodNo' value='"+foodNo+"'/><input type='hidden' name='udList["+count+"].regDate' value='"+date+"'><input type='hidden' name='udList["+count+"].userId' value='${member.userId}'/><button type='button' class='btn btn-warning btn-circle'>X</button><br></li></div>";
				
				kcalUL.append(str);
				console.log(str);
				count++;

				});
			}	
		});
		
		/* alert(foodNo); */
});
</script>
<script>
       var actionForm = $("#actionForm");
	     $(".paginate_button a").on("click",function(e){
	    	e.preventDefault();
	    	/* console.log('click'); */
	    	actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	    	/* actionForm.submit(); */
	    	actionForm.attr("action","/health/food");
	    	  actionForm.submit();
	     });
</script>
<script>
	var searchForm = $("#searchForm");
	$("#searchForm button").on("click", function(e){
		if(!searchForm.find("input[name='keyword']").val()){
			alert("키워드를 입력하세요");	
			searchForm.find("input[name='pageNum']").val("1");
			searchForm.find("input[name='category']").val("");
			searchForm.submit();
			
		}
		searchForm.find("input[name='pageNum']").val("1");
		e.preventDefault();
		searchForm.submit();
	});
	
	/* var inp_box = $(".inp_box"); */
	
	
</script>
</body>
</html>