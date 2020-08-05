<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<style>
table, tr, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}


</style>
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[name='modifyOk']");

		// 수정 
		$(".update_btn").on("click", function() {

			var modifyYN = confirm("수정하시겠습니까?");
			if (modifyYN == true) {
				formObj.attr("action", "modifyOk");
				formObj.attr("method", "post");
				formObj.submit();
			}
		})

		// 삭제
		$(".delete_btn").on("click", function() {

			var deleteYN = confirm("삭제하시겠습니까?");
			if (deleteYN == true) {

				formObj.attr("action", "delete");
				formObj.attr("method", "post");
				formObj.submit();

			}
		})

		// 목록
		$(".list_btn").on("click", function() {

			location.href = "/board";

		})

	})
</script>
</head>
<body>
	<section class="container" style="margin-top: 20px; margin-bottom: 20px;">
		<form name="modifyOk" role="form">
			<input type="hidden" id="bno" name="bno" value="${bdto.bno}" />
			<%-- 				<input type="hidden" id="title" name="title" value="${bdto.title}" />	 --%>
			<%-- 				<input type="hidden" id="content" name="content" value="${bdto.content}" />	 --%>

			<div class="form-group">
				<label for="title" class="col-sm-2 control-label">제목</label> <input
					type="text" id="title" name="title" class="form-control"
					value="${bdto.title}" />
			</div>
			<div class="form-group">
				<label for="content" class="col-sm-2 control-label">내용</label>
				<textarea id="content" name="content" class="form-control"><c:out
						value="${bdto.content}" /></textarea>
			</div>
			<div class="form-group">
				<label for="writer" class="col-sm-2 control-label">작성자</label> <input
					type="text" id="writer" name="writer" class="form-control"
					value="${bdto.writer}" readonly="readonly" />
			</div>
			<div class="form-group">
				<label for="regdate" class="col-sm-2 control-label">작성날짜</label>
				<%-- 					<fmt:formatDate value="${read.regdate}" pattern="yyyy-MM-dd" />	 --%>
			</div>
		</form>
		<div>
			<button type="button" class="update_btn btn btn-warning">수정확인</button>
			<button type="button" class="list_btn btn btn-primary">목록</button>
		</div>
	</section>
	<hr />
</body>
</body>
</html>