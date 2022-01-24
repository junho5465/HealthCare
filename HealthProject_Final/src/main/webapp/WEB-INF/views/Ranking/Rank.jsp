<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<div style="display: none;"></div>
</head>
<link href="/resources/css/rank.css" rel="stylesheet" />
<jsp:include page="/WEB-INF/views/hellth/header.jsp"/>
<body class="page-leaderboard">
	<div id="contain-all" class=" slideout-panel">
		<section class="leaderboard-progress">
			<div class="contain text-center">
				<img alt="Android Basics Leaderboard" class="mb-2" src="/resources/image/king.png">
				<h2 class="neonText">HELLTH KING</h2> 
			</div>
		</section>
	<!-- 여기서 나뉨 -->
		<section class="ranking">
			<div class="contain">
				<div class="ranking-table">
					<div class="ranking-table-header-row">
						<div class="ranking-table-header-data h6">Rank</div>
						<div class="ranking-table-header-data h6">Name</div>
						<div class="ranking-table-header-data h6">LV+POINT</div>
					</div>
					<div class="ranking-table-row-leader-1">
						<div class="ranking-table-data-leader-1">
							<div class="medal-gold"></div>
						</div>
						<div class="ranking-table-data">
							<c:forEach var="list" items="${first}">
								<c:out value="${list.userId}"/>
							</c:forEach>
						</div>
						<div class="ranking-table-data">
							<c:forEach var="list" items="${first}">
								${list.grade} / <fmt:formatNumber value='${list.point}' pattern="#.#" />
							</c:forEach>
						</div>
					</div>
					<div class="ranking-table-row-leader-2">
						<div class="ranking-table-data-leader-2">
							<div class="medal-silver"></div>
						</div>
						<div class="ranking-table-data">
							<c:forEach var="list" items="${second}">
								<c:out value="${list.userId}"/>
							</c:forEach>
						</div>
						<div class="ranking-table-data">
							<c:forEach var="list" items="${second}">
								${list.grade} / <fmt:formatNumber value='${list.point}' pattern="#.#" />
							</c:forEach>
						</div>
					</div>
					<div class="ranking-table-row-leader-3">
						<div class="ranking-table-data-leader-3">
							<div class="medal-bronze"></div>
						</div>
						<div class="ranking-table-data">
							<c:forEach var="list" items="${third}">
								<c:out value="${list.userId}"/>
							</c:forEach>
						</div>
						<div class="ranking-table-data">
							<c:forEach var="list" items="${third}">
								${list.grade} / <fmt:formatNumber value='${list.point}' pattern="#.#" />
							</c:forEach>
						</div>
					</div>
					<!-- 여기서 부터 4등 시작 -->
					<div class="ranking-table-body">
					<% int rank=3;%>
						<c:forEach var="list" items="${list}">
							<div class="ranking-table-row">
								<div class="ranking-table-data">
									<%=rank+=1 %>
								</div>
								<div class="ranking-table-data">
									<c:out value="${list.userId}"/>
								</div>
								<div class="ranking-table-data">
										${list.grade} / <fmt:formatNumber value='${list.point}' pattern="#.#" />						
									<!-- <div class="complete"></div> -->
								</div>
							</div>
						</c:forEach>

					</div>
				</div>
				<!--Use Date Formatter-->
			</div>
		</section>
		
	</div>




</body>

</html>