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
                        <div class="panel-heading">
							게시글 조회
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                       
                            	<div class="form-group">
                            	<label>BOOKID</label><input class="form-control" name='bookId' 
                            	value='<c:out value="${book.bookId }"/>' readonly="readonly">
                            	</div>
                            	<div class="form-group">
                            		<label>BOOKNAME</label>
                            		<input class="form-control" name="bookName" value='<c:out value="${book.bookName }"/>'>
                            	</div>
                            	<div class="form-group">
                            		<label>PUBLISHER</label>
                            		<textarea class="form-control" rows="3" name="publisher"><c:out value="${book.publisher }"/></textarea>
                            	</div>
                            	<div class="form-group">
                            		<label>PRICE</label>
                            		<input class="form-control" name="price"  
                            	value='<c:out value="${book.price }"/>' readonly="readonly" >
                            	</div>
                            	<!-- <button type="submit" class="btn btn-default">Submit</button>
                            	<button type="reset" class="btn btn-danger">Reset</button> -->
                          		<button data-oper='modify' class="btn btn-outline btn-warning">Modify</button>
                          		<button data-oper='list' class="btn btn-outline btn-success">List</button>
                          		<form id="operForm" action="/board/modify" method="get">
                        		<input type="hidden" id="bno" name="bno" value='<c:out value="${book.bookId }"/>'>
                          		</form>
                            </div>
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
        <!-- /#page-wrapper -->
        <script type="text/javascript">
        	$(document).ready(function(){
        		var operForm = $("#operForm");
        		$('button[data-oper="modify"]').on("click",function(e){
        			operForm.attr("action","/board/modify").submit();
        		});
        		
        		$('button[data-oper="list"]').on("click",function(e){
        			operForm.find("#bno").remove();
        			operForm.attr("action","/board/list");
        			operForm.submit();
        		});
        	});
        </script>
</body>
</html>