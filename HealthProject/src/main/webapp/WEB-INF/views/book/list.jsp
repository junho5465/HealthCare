<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page import="org.health.domain.BookVO" %>   
<!DOCTYPE html lang="en">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<title>Insert title here</title>
    <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery -->
  	<script src="/resources/vendor/jquery/jquery.min.js"></script>
</head>
<body>
<div id="wrapper">
<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Tables</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">게시글 목록
					<button id='regBtn' type="button" class="btn btn-xs btn-success pull-right">글쓰기</button>
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<table width="100%"
						class="table table-striped table-bordered table-hover"
						id="dataTables-example">
						<thead>
							<tr>
								<th>책이름</th>
								<th>책제목</th>
								<th>출판사</th>
								<th>가격</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="book" items="${list }">
								<tr class="odd gradeX">
									<td>${book.bookId }</td>
									<td><a href="/book/get?bookId=${book.bookId}">${book.bookName }</a></td>
									<td>${book.publisher }</td>
									<td class="center">${book.price }</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					
					<!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalllabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">Modal title</h4>
								</div>
								<div class="modal-body">처리가 완료되었습니다.</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-default">Save
										Changes</button>
								</div>
							</div>
						</div>
					</div> -->
					<!-- /.modal fade -->

					<!-- /.table-responsive -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-6 -->
	</div>
	<!-- /.row -->
</div>
</div>
<!-- /#page-wrapper -->
</body>
</html>